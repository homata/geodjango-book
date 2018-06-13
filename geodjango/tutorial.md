# GeoDjangoのチュートリアル

PostGISに入力したデータを使った処理を作成して行きたいと思います。

## RESTful APIの作成
leaflet.js等のJavaScriptとサーバとのインターフェースとしてRESTful APIを実装します。
DjangoでRESTful APIを実装する為に、Django REST framework(DRF)を使用します。
django-rest-framework-gisは、このDRFに地理空間機能拡張したモジュールです。

pipコマンドを使って追加をします。
* djangorestframework-gis : RESTful APIモジュール Django REST framework(DRF)の地理空間機能拡張バージョン
* django-filter : 検索機能モジュール
* markdown : Markdown変換ライブラリ

```python
(env) $ pip install djangorestframework-gis
    -> djangorestframework==3.8.2
    -> djangorestframework-gis==0.13
(env) $ pip install django-filter   # Filtering support
    -> django-filter==1.1.0
(env) $ pip install markdown        # Markdown support for the browsable API.
    -> Markdown==2.6.11
```

<u>**Note**</u>
* leaflet.js - https://leafletjs.com/
* Django REST framework(DRF) - http://www.django-rest-framework.org/
* django-rest-framework-gis - https://github.com/djangonauts/django-rest-framework-gis
* django-filter - https://django-filter.readthedocs.io/en/latest/index.html
* markdown - https://python-markdown.github.io/

#### settings.py設定
インストールしたアプリケーションを設定ファイルのsettings.pyに追加します
```python
(env) $ vi geodjango/settings.py
INSTALLED_APPS = [
    :
    'django_filters', 
    'rest_framework',
    'rest_framework_gis',
    'markdown', 
]
```

#### serializers.py作成
シリアライザはデータベースとAPIのとの間でデータフォーマットの変換をします。
worldアプリにserializers.pyファイルを作成します。
```python
(env) $ vi world/serializers.py
from rest_framework import serializers
from .models import Border, School, Facility, Busstop

class BorderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Border
        fields = ('__all__')

class SchoolSerializer(serializers.ModelSerializer):
    class Meta:
        model = School
        fields = ('__all__')

class FacilitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Facility
        fields = ('__all__')

class BusstopSerializer(serializers.ModelSerializer):
    class Meta:
        model = Busstop
        exclude = ("p11_003_2", "p11_003_3", "p11_003_4", "p11_003_5", "p11_003_6", "p11_003_7", "p11_003_8", "p11_003_9",
                   "p11_003_10", "p11_003_11", "p11_003_12", "p11_003_13", "p11_003_14", "p11_003_15",
                   "p11_003_16", "p11_003_17", "p11_003_18", "p11_003_19",
                   "p11_004_2", "p11_004_3", "p11_004_4", "p11_004_5", "p11_004_6", "p11_004_7", "p11_004_8", "p11_004_9",
                   "p11_004_10", "p11_004_11", "p11_004_12", "p11_004_13", "p11_004_14", "p11_004_15", "p11_004_16",
                   "p11_004_17", "p11_004_18", "p11_004_19")
```

#### view.py作成
ビューでリクエストに対するレスポンスの設定をします。
```python
(env) $ vi world/view.py
from rest_framework import viewsets
from rest_framework_gis.filters import DistanceToPointFilter, InBBoxFilter
from rest_framework.pagination import PageNumberPagination

from .serializers import BorderSerializer, SchoolSerializer, FacilitySerializer, BusstopSerializer
from .models import Border, School, Facility, Busstop

class MyPagination(PageNumberPagination):
    page_size_query_param = 'page_size'

class BorderViewSet(viewsets.ModelViewSet):
    queryset = Border.objects.all()
    serializer_class = BorderSerializer
    pagination_class = MyPagination
    filter_backends = (DistanceToPointFilter,)
    distance_filter_field = 'geom'
    distance_filter_convert_meters = True

class SchoolViewSet(viewsets.ModelViewSet):
    queryset = School.objects.all()
    serializer_class = SchoolSerializer
    pagination_class = MyPagination
    filter_backends = (DistanceToPointFilter,)
    distance_filter_field = 'geom'
    distance_filter_convert_meters = True

class FacilityViewSet(viewsets.ModelViewSet):
    queryset = Facility.objects.all()
    serializer_class = FacilitySerializer
    pagination_class = MyPagination
    filter_backends = (DistanceToPointFilter,)
    distance_filter_field = 'geom'
    distance_filter_convert_meters = True

class BusstopViewSet(viewsets.ModelViewSet):
    queryset = Busstop.objects.all()
    serializer_class = BusstopSerializer
    pagination_class = MyPagination
    filter_backends = (DistanceToPointFilter, InBBoxFilter)
    distance_filter_field = bbox_filter_field = 'geom'
    distance_filter_convert_meters = True
```

**設定項目**
* queryset: クエリーデータ一覧
* serializer_class: シリアライズ・デシリアライズで使用するserializer_classを指定
* pagination_class: ページングの設定
* filter_backends: データを絞り込む方法を設定
    - DistanceToPointFilter: 指定した点からの距離で絞り込むフィルタ
    - InBBoxFilter: バウンダリでの絞り込むフィルタ。南西端、北東端の経度、緯度を指定する
* distance_filter_field: フィルタの対象フィールドを設定
* bbox_filter_field: フィルタの対象フィールドを設定
* distance_filter_convert_meters: 

**django-rest-framework-gisのフィルター**
* InBBOXFilter
* GeometryFilter
* GeoFilterSet
* TMSTileFilter
* DistanceToPointFilter

#### urls.py設定
URLを設定します
```python
(env) $ vi geodjango/urls.py
from django.contrib.gis import admin
from django.urls import include, path
from rest_framework.routers import DefaultRouter

from world.views import BorderViewSet, SchoolViewSet, FacilityViewSet, BusstopViewSet

router = DefaultRouter()
router.register('border', BorderViewSet)
router.register('school', SchoolViewSet)
router.register('facility', FacilityViewSet)
router.register('busstop', BusstopViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
]
```
router.registerにURLの接尾辞とViewを指定します。これをinclude(router.urls)で追加することで/api/配下のルーティングルールを登録します。

## Browsable APIによる確認
Django REST frameworkのBrowsable APIを利用して、作成したREST APIの確認をします。

Webサーバを立ち上げて、http://localhost:8000/api/ にアクセスします。

```python
(env) $ python manage.py runserver
```
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/400.png" width=80% style="border:1px #000 solid;">
</div>

### 行政区域データ
指定した点からの距離で絞り込むフィルタを指定
* http://localhost:8000/api/border/?dist=300&point=141.354389,43.062083
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/401.png" width=80% style="border:1px #000 solid;">
</div>

### 小学校区データ
指定した点からの距離で絞り込むフィルタを指定
* http://localhost:8000/api/school/?dist=100&point=140.9278,41.9582
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/402.png" width=80% style="border:1px #000 solid;">
</div>

### 公共施設データ
指定した点からの距離で絞り込むフィルタを指定
* http://localhost:8000/api/facility/?dist=100&point=140.9278,41.9582
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/403.png" width=80% style="border:1px #000 solid;">
</div>

### バス停留所データ
指定した点からの距離で絞り込むフィルタを指定
* http://localhost:8000/api/busstop/?dist=1000&point=140.97150344,41.90632327
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/404.png" width=80% style="border:1px #000 solid;">
</div>

ページサイズとページ番号を指定
* http://localhost:8000/api/busstop/?page_size=10&page=1
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/405.png" width=80% style="border:1px #000 solid;">
</div>

バウンダリを指定
* http://localhost:8000/api/busstop/?in_bbox=140.97150344,41.90632327,141.97150344,42.90632327
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/406.png" width=80% style="border:1px #000 solid;">
</div>

データIDを指定
* http://localhost:8000/api/busstop/4798/
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/407.png" width=80% style="border:1px #000 solid;">
</div>

### GeoJSON Serializer

GeoJSON Serializerを使って、GeoJSONをマップに表示します。

#### view.py編集
GeoJSONを返すビューを作成します。
```python
(env) $ vi world/view.py
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
import traceback
import json
from django.core.serializers import serialize

class GeojsonAPIView(APIView):
    """
    GeoJsonデータ取得
    @return geojson形式
    """

    def get(self, request, *args, **keywords):
        try:
            # "crs": {"type": "name", "properties": {"name": "urn:ogc:def:crs:OGC:1.3:CRS84"}},
            encjson  = serialize('geojson', Border.objects.filter(n03_003="札幌市"),srid=4326, geometry_field='geom', fields=('n03_004',) )
            result   = json.loads(encjson)
            response = Response(result, status=status.HTTP_200_OK)

        except Exception as e:
            traceback.print_exc()
            response = Response({}, status=status.HTTP_404_NOT_FOUND)

        except:
            response = Response({}, status=status.HTTP_404_NOT_FOUND)

        return response
```

#### urls.py設定
URLを設定します
```python
(env) $ vi geodjango/urls.py
from world.views import GeojsonAPIView

urlpatterns = [
    :
    path('geojson/', GeojsonAPIView.as_view(), name='geojson_view'),
]
```
