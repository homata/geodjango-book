# GeoDjangoのチュートリアル

PostGISに入力したデータを使った処理を作成して行きたいと思います。

## RESTful APIの作成

leaflet.js等のJavaScriptとサーバとのインターフェースとしてRESTful APIを実装します。
DjangoでRESTful APIを実装には、Django REST framework(DRF)を使用します。
このDRFに地理空間機能拡張したモジュールがdjango-rest-framework-gisとなります。

必要なモジュールをpipコマンドを使って追加をします。

* djangorestframework-gis : RESTful APIモジュール Django REST framework(DRF)の地理空間機能拡張版
* django-filter : 検索機能モジュール
* markdown : Markdown変換ライブラリ

```python
(env) $ pip install djangorestframework-gis
    -> djangorestframework==3.8.2
    -> djangorestframework-gis==0.13
(env) $ pip install django-filter
    -> django-filter==1.1.0
(env) $ pip install markdown
    -> Markdown==2.6.11
```

<u>**Note**</u>
* leaflet.js - https://leafletjs.com/
* Django REST framework(DRF) - http://www.django-rest-framework.org/
* django-rest-framework-gis - https://github.com/djangonauts/django-rest-framework-gis
* django-filter - https://django-filter.readthedocs.io/en/latest/index.html
* markdown - https://python-markdown.github.io/
