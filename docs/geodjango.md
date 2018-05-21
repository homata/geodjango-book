--------

GeoDjanogoハンズオン
———

* [FOSS4G 2018 Hokkaido](https://foss4g.hokkaido.jp/)

> * ハンズオンの時間はどのくらいなのでしょうか？
ハンズオン時間については1コマ : 3時間となります。

> * 内容ですが、テーマをGeoDjangoとしてそのあたりを期待されているのでしょうか？
基本的には初級者を対象とするのが良いのかと思っております。ですので、Pythonまたは他の言語は触ったことがあるけどDjango自体を触ったことが無い対象が良いかなと思っております。

Djangoの概要・設定方法
	↓
GeoDjangoの概要・設定方法
	↓
GeoDjangoでどんなことができるか(データの配信方法など)


### Django

* [GeoDjango](https://docs.djangoproject.com/en/2.0/ref/contrib/gis/)
* [DjangoCongressJP 2018](https://djangocongress.jp/)
	* [GeoDjangoではじめる地理空間情報](https://speakerdeck.com/homata/geodjangodehazimerudi-li-kong-jian-qing-bao)

### DjangoGrilsDocs

* [Django GirlsのTutorial を翻訳しよう](https://bit.ly/2rWD1tE)
* [チュートリアル](https://djangogirlsjapan.gitbooks.io/workshop_tutorialjp/content/)
* [Github](https://github.com/DjangoGirlsJapan/tutorialJP)
* [本家チュートリアル English ver.](https://tutorial.djangogirls.org/en/)


---------

GeoDjango
——
* [GeoDjango | Django documentation | Django](https://docs.djangoproject.com/en/2.0/ref/contrib/gis/)
* [GeoDjango Tutorial](https://docs.djangoproject.com/en/2.0/ref/contrib/gis/tutorial/)

##### メモ (英語)

* [Geodjango Tutorial 1: Introduction to Django projects](https://www.youtube.com/watch?v=L3YoX9wrGDc)
 * [Twitter](https://twitter.com/geodjango)
* [Build a simple GIS web application using GeoDjango and Google Maps](http://invisibleroads.com/tutorials/geodjango-googlemaps-build.html)

##### メモ(日本語)
* [PostGISとGeoDjangoを使ってLeafletでGeoJSON Tile Layerを表示してみる(1) – インストール編 –](https://blog.bitmeister.jp/?p=3467)
* [GeoDjangoの管理画面でGoogle Mapsを使う](https://qiita.com/key/items/f3206e701238f187e759)

### OpenLayers
* [OpenLayers](https://openlayers.org/)

### Leaflet.js

* [Leaflet](http://leafletjs.com/)

### Folium
Foliumはデータを地図上に可視化するライブラリです。

* [Folium](https://github.com/python-visualization/folium)
* [Folium: Pythonでデータを地図上に可視化](https://qiita.com/nanakenashi/items/824c0cb16860ca59a424)

* [Python data, leaflet.js maps](http://python-visualization.github.io/folium/docs-master/)

### Uber
* [Uber](https://developer.uber.com/)
* [Open Source Software at Uber](https://github.com/uber)
    - [Open Source at Uber](https://uber.github.io/)
    - [deck.gl](http://uber.github.io/deck.gl/#/)

### Overpass turbo (OSM data)

* [OSM WIki](https://wiki.openstreetmap.org/wiki/JA:Overpass_turbo)

* [Overpass turbo](http://overpass-turbo.eu/)
    - https://github.com/tyrasd/overpass-turbo
* [Overpass API python wrapper](https://github.com/mvexel/overpass-api-python-wrapper)
* [Python Overpass Wrapper](https://github.com/DinoTools/python-overpy)
    - https://python-overpy.readthedocs.io/en/latest/

#### Library
* [OSMParser.py](https://gist.github.com/Tofull/49fbb9f3661e376d2fe08c2e9d64320e)
    - https://qiita.com/kkdd/items/e4adc4756af1bc9ac4d1
* [osm2nx](https://github.com/jonnyhuck/osm2nx)
* [osmnx](https://github.com/gboeing/osmnx)
* [osmgraph](https://github.com/Mapkin/osmgraph)
* [osmread](https://github.com/dezhin/osmread)
* [pyosmium](https://github.com/osmcode/pyosmium) 
    - <http://osmcode.org/pyosmium/>


#### MapBox

* [developers](https://www.mapbox.com/developers/)

### CART

* [CARTO](https://carto.com/)
    * [Incorporate public opinion for strategic development](https://carto.com/integrations/twitter-maps/)

#### OSGeo財団

* [OSGeo財団 日本支部](https://www.osgeo.jp/)

#### MAPD

* [MapDの本気を見た](https://qiita.com/Masutani/items/b7b0bfc7937a6d95a244)
#### mapillary

* [Mapillary](https://www.mapillary.com/)


Memo
—
* ISO国際規格 
	* ISO標準規格 19111:2003「座標による空間参照(Spatial Referencing by Coordinates)
	* https://www.iso.org/standard/26016.html
	* This standard has been revised by ISO 19111:2007. 
		* https://www.iso.org/standard/41126.html
	* 地理情報−座標による空間参照 (JIS 7111:2014)
		* http://kikakurui.com/x7/X7111-2014-01.html



* 空間参照に関する用語の定義
	- http://www.opengis.co.jp/techguidej/70spatref_J.pdf
* OGC (Open Geospatial Consortium) <http://www.opengeospatial.org/>
	- 自発的合意に基づく国際的な標準化機構です
	- 業界主導で地理情報の標準化に取り組んでいる非営利団体
	-  <https://doc.arcgis.com/ja/arcgis-online/reference/ogc.htm>
	- OGCとは、GML（Geography Markup Language）をはじめとした、地理空間に関する情報の標準化などを推進している非営利団体である。
	- [GISの標準化とは？](http://club.informatix.co.jp/?p=1316)

* [SRID](https://qiita.com/yellow_73/items/b98d3d1ef3abf7299aba)
	-  空間参照系(Spatial Reference System, SRS)の識別コードを示す整数値
	- [SRID(Spatial Reference System Identifier)](https://en.wikipedia.org/wiki/Spatial_reference_system)
	- [SRID とは](http://desktop.arcgis.com/ja/arcmap/10.3/manage-data/using-sql-with-gdbs/what-is-an-srid.htm)
	- 空間参照 ID (SRID) は、特定の座標系、許容値、および解像度に関連付けられた一意の ID です
	- [PostGISでよく使うSRIDまとめ](http://landhere.jp/blog/a79.html)
	- [SRID (Spatial Reference Identifier)](https://docs.microsoft.com/ja-jp/sql/relational-databases/spatial/spatial-reference-identifiers-srids?view=sql-server-2017)
	- [Coordinate Transformation Service](http://www.opengeospatial.org/standards/ct)

* EPSG
	- European Petroleum Survey Group (EPSG)が管理していましたが、EPSGはInternational Association of Oil and Gas Procuders (OGP)が吸収したため、現在はOGPが管理しています。
	- EPSGオフィシャルの空間参照系レジストリの検索サービスは <http://www.epsg-registry.org/> にあります
	- [空間参照系の概要](https://qiita.com/yellow_73/items/b98d3d1ef3abf7299aba)
	- [GISのための測地成果、測地系、楕円体、投影座標系、EPSGコードのまとめ](http://d.hatena.ne.jp/tmizu23/20091215/1260868350)
	- <http://www.epsg-registry.org/>
	- [PostGISでよく使うSRIDまとめ](http://landhere.jp/blog/a79.html)
OSGEO:41001


* 空間参照系(CRS) (Coordinate Reference System)
	*  [Geospatial Coordinate Reference System 84 (CRS:84)](http://svg2.mbsrv.net/vocabulary/crs/84)
	* CRS（基準座標系)
	* http://www.gsi.go.jp/GIS/stdind/jsgi_kaisetsu04.html
* GDAL(Geospatial Data Abstraction Library) 
    - <http://www.gdal.org/>
    - OSGeo財団がMIT Licenseライセンスにより提供しているGISラスターデータフォーマット用ライブラリ

* GEOS (Geometry Engine - Open Source) 
    - <http://trac.osgeo.org/geos/>
    - 地理空間情報処理のためのオープンソースライブラリで、OSGeo財団が支援するオープンソースプロジェクトの1つです
* PROJ <http://proj4.org/>
	- 投影法の変換
      - PROJ is a generic coordinate transformation software, that transforms coordinates from one coordinate reference system (CRS) to another. This includes cartographic projections as well as geodetic transformations. 
     -  https://github.com/OSGeo/proj.4
* GeoJSON 
	* [GeoJSON (RFC7946) 仕様の注意点など](https://qiita.com/kkdd/items/416b955fb2d3e1327edc)
	* RFC7946 (The GeoJSON Format)
	*  https://tools.ietf.org/html/rfc7946
	*  [WGS84]    National Imagery and Mapping Agency, "Department of
              Defense World Geodetic System 1984: Its Definition and
              Relationships with Local Geodetic Systems", Third Edition,
              1984.

説明
——
* [OSGeo財団（The Open Source Geospatial Foundation）](https://www.osgeo.jp/)
* [空間情報クラブ](http://club.informatix.co.jp/)

* [GIS用語集](http://club.informatix.co.jp/?page_id=1691)

* 赤色立体地図 (http://club.informatix.co.jp/?p=5384)
    - アジア航測の技術者である千葉達朗氏が考案した赤色立体地図は、線も記号も光影も使わず、実際にそこにある地形を１枚の地図で立体的に見せる表現技法
* CS立体図 (http://club.informatix.co.jp/?p=5384)
    - 長野県林業総合センターの戸田堅一郎氏が考案した「CS立体図」は、標高・傾斜・曲率をそれぞれ合成する手法で地形を再現する。この手法の特長は人間が地図上で立体を感じるプロセスを再現していることで、いわば「地図から発想」による表現手法


* [地方公共団体におけるGIS活用の取組支援](http://www.mlit.go.jp/kokudoseisaku/kokudoseisaku_tk1_000040.html)

測地系・座標系
—

* [日本の測地系｜国土地理院](http://www.gsi.go.jp/sokuchikijun/datum-main.html)

* [投影法、座標系、測地系、それぞれの違いについて](http://sanvarie.hatenablog.com/entry/2015/12/30/182723)
* [空間参照系の概要](https://qiita.com/yellow_73/items/b98d3d1ef3abf7299aba)
* [PostGISで使用されるSRIDについて ](http://www.jurigis.me/2015/02/05/about-srid/)
* [測地系とは？](http://club.informatix.co.jp/?p=642)
* [座標系とは？](http://club.informatix.co.jp/?p=708)
* [投影法とは？](http://club.informatix.co.jp/?p=1143)
地図タイルについて
http://smellman.hatenablog.com/entry/2015/12/26/054520

* 測地系 (datum) = 回転楕円体 + 座標系
    http://ryuiki.agbi.tsukuba.ac.jp/~nishida/lecture/GIS/datum.html

* PROJ.4による測地系の変換
*「GIS実習オープン教材」(試験公開版)
    * <https://gis-oer.github.io/gitbook/book/>
    * <https://github.com/gis-oer/gis-oer>
* [地球儀と世界地図](http://www.azeta.jp/16-17_tiri/1-1-1/grobe.html)
* [投影法](https://www.slideshare.net/kokogiko/ss-4134581)
* [地理情報科学スライド](http://curricula.csis.u-tokyo.ac.jp/slide/3-1.html)
* [地理情報科学標準カリキュラムに基づく地理空間的思考の教育方法・教材開発研究](http://curricula.csis.u-tokyo.ac.jp/index.html)

* [GISのための測地成果、測地系、楕円体、投影座標系、EPSGコードのまとめ](http://d.hatena.ne.jp/tmizu23/20091215/1260868350)

### 投影法
* [地図投影法の一覧](https://ja.wikipedia.org/wiki/地図投影法の一覧)

正確さ

    * 方位図法
    * 正積図法
    * 正角図法 (どの点のどんな角度であっても地図上に正しく投影される)

展開型
    * 円筒図法
    * 円錐図法
    * 方位図法


* [地球儀と世界地図](http://www.azeta.jp/16-17_tiri/1-1-1/grobe.html)
* [投影法](https://www.slideshare.net/kokogiko/ss-4134581)

投影法とは 球体（正確には回転楕円体）の地球を平面の地図に表現するための手法。形状・距離・方位・面積等の全てを正確に保つ事は不可能なため、用途に応じて様々な方法・分類がある。

* 性質による分類 
	* 正積図法（面積正確）
	* 正角図法（経緯度のなす角正確）
	* 正距図法（特定の地点間の距離が正確）
	* 等… 
* 投影する光源の位置による分類 
	* 心射図法（地球中心から投影）
	* 平射図法（地表面からの投影）、
	* 正射図法（無限遠点からの投影）
	* 等… 
https://pic4.zhimg.com/80/62aa255cd7114af2e98488306d061909_hd.jpg
https://i1.wp.com/pic3.zhimg.com/50/v2-c9fc298f646eb370e4071784b1f59937_hd.jpg

【性質で分類】
    正距図法：距離が正しい。
    正積図法：面積が正しい。
    正角図法：任意の二地点間を結んだ直線と経線のなす角度が正しい。
【投影法で分類】
    方位図法：地球の周辺に置かれた平面に地球の姿を投影する。
    円錐図法：地球に傘のような円錐をかぶせて地球の姿を投影し、平面に切り広げる。
    円筒図法：地球に帯を巻くように円筒をかぶせて地球の姿を投影し、平面に切り広げる。

日本の住所はわけがわからない!? 不規則な番地に困惑する海外出身者　欧米では「道+番号」
https://newsphere.jp/national/20160611-1/
日本が今のような表記になった理由には、諸説ある。「欧米の都市は都市計画に基づいて形成されているが、日本の都市は自然発生的にできたから」という見方が一般的だろうか。ウッドワードさんは、「私が聞いたベストアンサーは、西洋の人々は道路沿いに家を建てたのに対し、日本人は空き地に家を建てたから、というものだ」と書いている。

アメリカを含む欧米圏の国では、住所は通りの名前とナンバーで付けられていることが多いので、地図を片手に探し出すことが結構容易にできます。
しかし、日本の住所表記は地名が使われていることが多く、また長い場合も多いので、わかりにくく感じてしまいます。
さらに、同じ地名のエリアに着いたとしても、そこから「～丁目」を探さなければなりません。これが曲者で、順番に並んでいるわけではなく、結構入り組んだ配置になっていることも多いので、なおさらにわかりにくくなります。
その点、アメリカなどでは、道路に面する両側が奇数番と偶数番に分かれているので、どちら側を歩いていけば良いかがすぐにわかります。また、このナンバーも建物に大きく書いてあることが多いので、遠目からでも見つけることができます。
https://gaijin-deai.com/know-how/category76/entry324.html


Japanese addressing system
https://en.wikipedia.org/wiki/Japanese_addressing_system
住居表示
https://ja.wikipedia.org/wiki/住居表示

デモ
——

* [EarthWindMap](https://earth.nullschool.net/)
* [EarthWindMap - オーロラ](https://earth.nullschool.net/#current/space/surface/level/anim=off/overlay=aurora/orthographic=-78.12,41.07,396)
* [Wind - deck.gl](http://uber.github.io/deck.gl/showcases/wind/)
* [Best Flight Tracke](https://planefinder.net/)
* [Flight Tracker | Flightradar24 | Track Planes In Real-Time](https://www.flightradar24.com/)
* [mapd](https://www.mapd.com/)
	* [mapd - tweetmap](https://www.mapd.com/demos/tweetmap/)
	* [NYC Taxi Rides](https://www.mapd.com/demos/taxis/#/dashboard?_k=ldaltn)

* [deck.gl](http://uber.github.io/deck.gl/)