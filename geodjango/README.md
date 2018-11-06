# GeoDjangoの概要

## GeoDjangoとは
GeoDjangoはDjangoに標準で含まれている地理空間データ用のモジュールです。

GeoDjangoモジュールを使うことで地理情報システム (GIS) のWebアプリケーションの作成が可能になります。

<u>**GeoDjangoの機能**</u>
* Modelに地理空間情報フィールド を追加 (GeometryField, PointField ...)
* ORMで空間演算に対応 (rast__contains (ST_Contains) ....)
* Djanngoの管理画面で地理地理情報フィールドの編集 (GeoModelAdmin  ...)
* 地理空間情報APIを追加 (GeolocationAPI ...)
* Manageコマンド (GeoDjango Management Commands)

<u>**GeoDjango Webアプリの基本的な構成例**</u>

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/000.png" width=60% style="border:1px #000 solid;">
</div>

## GeoDjangoの利用例
* インタラクティブにバックエンドで計算してからフロントサイドへ送信
* アクセスユーザーの制限と管理
* Pythonベースのデータ分析や機械学習等との連携または融合
    - pypi: https://pypi.org/
* Pythonベースの地理情報ライブラリの利用
    - 代表的な例 
        - geopandas - pandasの地理情報拡張
        - osmnx - Open Street Mapのデータを操作
        - folium - LeafletをPythonから操作
        - geopy - 住所→緯度経度　緯度経度→住所　変換
        - shapely - GEOSライブラリを使用して、地理情報オブジェクトを図形的にいろいろ扱う

## GeoDjangoのポイント

### 必要な周辺ツール (Geospatial libraries and Spatial database)
* GDAL, GEOS, PROJ4をインストール
* PostgresSQL, PostGIS / MySQL / Oracle / SQLite, SpatialLiteのどれかをインストール

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/100.png" width=90% style="border:1px #000 solid;">
</div>

<div style="font-size:xx-small">
* https://docs.djangoproject.com/en/2.0/ref/contrib/gis/install/#spatial-database
</div>

### 設定 (GeoDjango Setting Up (setting))

設定ファイルにGISデータベースエンジンとアプリケーションを設定

**PostGISの場合**<br>
```python
$ vi <プロジェクト>/settings.py
DATABASES = {
    'default': {
        'ENGINE': 'django.contrib.gis.db.backends.postgis',  <-- エンジン設定
        'NAME': 'geodjangodb',  <-- 変更  データベース名
        'USER': 'postgres',     <-- 追加  ユーサ名
        'HOST':'localhost',     <-- 追加  ホスト名
        'PASSWORD': 'xxxxxxxx', <-- 追加  パスワード
            :
    },
}
INSTALLED_APPS = [
    :
    'django.contrib.gis',  <-- アプリケーション設定
    :
]
```

### データベース定義(モデル)　(GeoDjango Setting Up (model))

```python
$ vi <アプリケーション>/models.py

from django.db import models
             ⇓
# This is an auto-generated Django model module created by ogrinspect.
from django.contrib.gis.db import models

class Border(models.Model):
    n03_001 = models.CharField(max_length=10)
    n03_002 = models.CharField(max_length=20)
    n03_003 = models.CharField(max_length=20)
    n03_004 = models.CharField(max_length=20)
    n03_007 = models.CharField(max_length=5)
    geom     = models.PolygonField(srid=6668)
```

### データのインポート (Importing Spatial Data)

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/101.png" width=90% style="border:1px #000 solid;">
</div>

<div style="font-size:xx-small">
* 国土数値情報ダウンロードサービス: http://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-N03-v2_3.html
</div>

### シェープファイルからモデル定義のコードを生成 (Importing Spatial Data (ogrinspect))
シェープファイルからのモデル作成  
    
```python
座標系：JGD2011 -> SRID=6668
$ python manage.py ogrinspect --srid=6668 world/data/N03-17_14_170101.shp Border
    ↓
# This is an auto-generated Django model module created by ogrinspect.
from django.contrib.gis.db import models
        
class Border(models.Model):
    n03_001 = models.CharField(max_length=10)
    n03_002 = models.CharField(max_length=20)
    n03_003 = models.CharField(max_length=20)
    n03_004 = models.CharField(max_length=20)
    n03_007 = models.CharField(max_length=5)
    geom = models.PolygonField(srid=6668)
```

### データインポート用のスクリプロプログラムを作成 (Importing Spatial Data (LayerMapping))
シェープファイルをプログラムでデータベースにロードpythonプログラムを編集する

* border_mapping
    - モデルフィールドとシェーブファイル属性の対応表
* transform
    - 座標データ変換はしない
* encoding
    - シェープファイルの文字コードを指定
* N03-17_14_170101.shp
    - ロードするシェープファイル

$ vi load.py
```python
# -*- coding: utf-8 -*-
import os
from django.contrib.gis.utils import LayerMapping
from world.models import Border

# Modelとシェープファイルのカラムのマッピング
border_mapping = {
    'n03_001' : 'N03_001',
    'n03_002' : 'N03_002',
    'n03_003' : 'N03_003',
    'n03_004' : 'N03_004',
    'n03_007' : 'N03_007',
    'geom' : 'POLYGON',
}
# シェープファイル
border_shp = os.path.abspath(
    os.path.join(os.path.dirname(__file__), 'data', 'N03-17_14_170101.shp'),
)

def run(verbose=True):
    lm = LayerMapping(Border, border_shp, border_mapping, transform=False, encoding='sjis')
    lm.save(strict=True, verbose=verbose)
```

### インポート実行 (Importing Spatial Data)

load.pyを実行してデータベースにロードする

    $ python manage.py shell
    In [1]: from world import load
    In [2]: load.run()
    In [3]: exit


### 管理画面 (Geographic Admin)

$ vi <アプリケーション>/admin.py

```python
from django.contrib.gis import admin
from .models import Border

#admin.site.register(Border, admin.GeoModelAdmin)
admin.site.register(Border, admin.OSMGeoAdmin)
```

$ vi <プロジェクト>/urls.py
```python
from django.urls import include, path
from django.contrib.gis import admin
urlpatterns = [
    path('admin/', admin.site.urls),
]
```

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/102.png" width=80% style="border:1px #000 solid;">
</div>

### GeoJSON Serializer
データベースから指定のデータをGeoJSON形式で取得

```python
from django.core.serializers import serialize
import json
from world.models import Border

encjson  = serialize('geojson', Border.objects.filter(n03_004="中原区"),
			srid=4326, geometry_field='geom', fields=('n03_004',) )
result  = json.loads(encjson)
```

### GeoDjangoアプリの作成基本例

#### leaflet.js
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/103.png" width=80% style="border:1px #000 solid;">
</div>

#### MAPD: tweetmap
Twitterつぶやきのダッシュボード
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/104.png" width=80% style="border:1px #000 solid;">
</div>

<div style="font-size:xx-small">
* https://www.mapd.com/demos/tweetmap/
</div>

#### MAPD:NYC Taxi Rides
ニューヨークのタクシーの乗降ダッシュボード
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/105.png" width=80% style="border:1px #000 solid;">
</div>

<div style="font-size:xx-small">
* https://www.mapd.com/demos/taxis/#/dashboard?_k=aigptu
</div>

#### 5952 for GTFS
CesiumでGTFSデータの可視化ダッシュボード
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/106.png" width=80% style="border:1px #000 solid;">
</div>
