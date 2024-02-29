- [1. このプロジェクトについて](#1-このプロジェクトについて)
  - [1.1. Echoプロジェクト作成＆削除](#11-echoプロジェクト作成削除)
  - [1.2. コンテナ立ち上げ](#12-コンテナ立ち上げ)
  - [1.3. すべてのコンテナを削除](#13-すべてのコンテナを削除)


# 1. このプロジェクトについて

GoフレームワークのEchoを自前のDocker Composeで使用するためのテンプレ用プロジェクトです。

※ このプロジェクトでは、あえて`.gitignore`にて`/src`ディレクトリを捕捉しないよう設定しています。（必要に応じて指定を削除してください）

## 1.1. Echoプロジェクト作成＆削除

Echoプロジェクト（srcフォルダ）を作成します。

```sh
cd script/init/
./create_src.sh
```

Echoプロジェクト（srcフォルダ）を削除したい場合にのみ実行します。

```sh
cd script/init/
./remove_src.sh
```

## 1.2. コンテナ立ち上げ

コンテナビルド

```sh
cd script
./build.sh
```

コンテナ立ち上げ

```sh
docker compose up --build
docker compose up
```

## 1.3. すべてのコンテナを削除

```sh
cd script
./down_clear.sh
```
