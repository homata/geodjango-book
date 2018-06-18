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

<u>**Djangoの考え方**</u>
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
* Webフレームワークの機能が標準整備
    - URLディスパッチャー
    - O/Rマッパー
    - テンプレートエンジン
* ユーザー認証まわりの機能が標準装備
    - ユーザーモデル、グループ、権限、ユーザーセッション
* 管理画面の機能が標準装備
    - デフォルト機能が自動で生成される
    - ユーザー認証、コンテンツ管理、サイトマップ、RSSフィードなど多くの機能を細かい設定なしにすぐに使うことができる。
* セキュリティ対策が万全で機能が豊富
    - XSS, CSRF, SQLインジェクション等
* 国際化対応
* REST APIが比較的に簡単に作成できる. 
    - クライアントJacaScriptとはAPIで連携
    - Django Rest Frameworkモジュールがデファクト
* メンテナンス性能が高い
    - 各ファイルの役割が決まっている (ファイルの修正が煩雑に感じる場合はある)
    - コード可読性は高い