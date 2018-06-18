# Geoライブラリ

## GISライブラリ
* GEOS (Geometry Engine, Open Source) 
    - 地理空間情報処理のためのオープンソースライブラリで、OSGeo財団が支援している
    - 幾何演算ライブラリ
    - <http://trac.osgeo.org/geos/>
* GDAL(Geospatial Data Abstraction Library) 
    - OSGeo財団が提供しているGISラスターデータフォーマット用ライブラリ
    - ラスタおよびベクトル地理空間データ変換ライブラリ
    - <http://www.gdal.org/>
* PROJ4 (Cartographic Projections Library) 
    - 一般的な座標変換ソフトウェア
    - 投影変換ライブラリ
    - <http://proj4.org/>

<div style="font-size:xx-small">
* OSGeo財団 (The Open Source Geospatial Foundation) <br>
* https://www.osgeo.jp/地理技術及び地理データの共有化を推進する非営利の非政府
</div>

## 代表的な地図表示のJavaScriptライブラリ
地図表示するためのJavaScriptのオープンソースライブラリとして「OpenLayers」と「Leaflet.js」が代表的である。Google Maps JavaScript APIも地図表示するためのJavaScriptのライブラリである。

### OpenLayers 
* OSGeo財団のプロジェクトとなっている。GISとしての機能は豊富であるがGISの知識が多少必要であるが細かい設定が出来る
    * OpenLayers2 <http://openlayers.org/two/>
        - 安定している
        - サンプル等は豊富
        - 新しいバージョンのリリースはない
    * OpenLayers3 <https://openlayers.org/>
        - OpenLayers2の後継バージョン。2との互換性はない
        - 新規機能はこちらに
        - OpenLayers2より多少複雑である

### Leaflet.js
* <https://leafletjs.com/>
* GISの知識のない開発者でも容易にタイルベースのWeb地図を表示できる
* Web開発の経験があると理解しやすいくシンプルに使える
* プラグインが充実している

<u>**参考:その他のJavaScript例**</u>
* D3.js - https://d3js.org/
* Cesium - https://cesiumjs.org/
* deck.gl -  http://uber.github.io/deck.gl/
* turf.js - http://turfjs.org/
* mapbox.js - https://www.mapbox.com/mapbox.js/api/