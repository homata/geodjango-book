# Djangoの概要

## Djangoとは
Django（ジャンゴ）はPythonで実装されたWebフレームワークで、2005年にオープンソース 
<https://github.com/django/django> (BSD license)で公開されました。
名前の由来はジプシー・スウィングのギタリストでのジャンゴ・ラインハルト (Django Reinhardt) からとったものです。

Pythonでデータ処理からWebアプリまでを同じプログラム言語で書くことができるということで、Djangoの需要も高まって来ています。

最新版は、2017年12月に9年ぶりとなるメジャーバージョンアップされてDjango 2.0.6 (2018/6/11現在)となります。
バージョン2.0からPython3.5以上のみがサポート対象となりました。
Python2系の場合は、Django 1.11 LTSでPython 2.7をサポートしています。

日本語の情報が少なくないといわれていますが、最近では日本語の書籍や情報も増えてきています。


<u>**特徴**</u>
* All In One
    - 開発者ができるだけ早くアプリケーションを完成できるように設計
* DRY (Don't Repeat Yourself)
    - ソフトウェア開発全体において情報を重複させない
* MTV fraemwork
    - Model, View, Templateフレームワーク
* Reassuringly secure
    - セキュリティを担保している

参考:
* Design philosophies - https://docs.djangoproject.com/en/1.11/misc/design-philosophies/
* Djangoで作られたサイト - https://www.djangosites.org/
* HotFramework - https://hotframeworks.com/languages/python

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/000.png" width=50% style="border:1px #000 solid;">
</div>


<u>**Djangoアプリの処理の流れ**</u>

Djangoは下記のような流れでクライアントからのリクエストの処理をします。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/001.png" width=80% style="border:1px #000 solid;">
</div>

<u>**Djangoの特徴**</u>
* Webフレームワークによく使用される機能がある
    - URLディスパッチャー
    - O/Rマッパー
    - テンプレートエンジン
* 管理画面が自動で生成される
    - ユーザー認証、コンテンツ管理、サイトマップ、RSSフィードなど多くの機能を細かい設定なしにすぐに使うことができる。
* REST APIが比較的に簡単に作成できる. 
    - JacaScriptとの連携
    - サーバサイドのデータベースやデータの操作が容易
    - Django Rest Frameworkを利用
* Pythonベースの地理情報ライブラリが利用できる 
    - pypi: https://pypi.org/
    - 代表的な例 
        - geopandas - pandasの地理情報拡張
        - osmnx - Open Street Mapのデータを操作
        - folium - LeafletをPythonから操作
        - geopy - 住所→緯度経度　緯度経度→住所　変換
        - shapely - GEOSライブラリを使用して、地理情報オブジェクトを図形的にいろいろ扱う
* メンテナンス性能が高い
    - 各ファイルの役割が決まっている
    - (ファイルの修正が煩雑に感じる場合はある
    - コード可読性は高い