# 1. GeoDjangoの概要

## GeoDjangoとは
GeoDjangoはDjangoに含まれている地理空間データ用のモジュールです
地理情報システム (GIS) のWeb アプリケーションが作成が可能になります

<u>**特徴**</u>
* Modelに地理空間情報フィールド を追加 (GeometryField, PointField ...)
* ORMで空間演算に対応 (rast__contains (ST_Contains) ....)
* Djanngoの管理画面で地理地理情報フィールドの編集 (GeoModelAdmin  ...)
* 地理空間情報APIを追加 (GeolocationAPI ...)
* Manageコマンド (GeoDjango Management Commands)

<u>**Django Webアプリの基本的な構成例**</u>

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/000.png" width=60% style="border:1px #000 solid;">
</div>
