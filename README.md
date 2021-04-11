# README
## 環境
- ruby: 3.0.1
- Rails: 6.1.3.1
- PostgreSQL: 13.2

## ローカルでの実行手順
- postgresqlでtaskattaようにDBのユーザを用意しておく
- `config/database.yml`の`username`と`password`をtaskattaようのユーザ名とパスワードに書き換える
- ローカル環境に以下のDBを作成しておく
    - `taskatta_development`
    - `taskatta_test`
- プロジェクトのルートディレクトで以下のコマンドを順番に実行する
- `bundle install path --vendor/bundle -without oroduction`
- `rails db:migrate`
- `rails db:seed`
- `rails s`


## デプロイ手順
- ローカルでの実行環境を用意しておく
- heroku cliをインストールしていない場合はhomebrewなどを使ってインストールする
- プロジェクトのルートディレクトで以下のコマンドを順番に実行する
- `bundle exec rubocop --fail-level W --display-only-fail-level-offense`(エラーがないことを確認する)
- `bundle exec rspec`(テストが全て通ることを確認する)
- `heroku login`(アカウントIDとパスワードは別途聞いてください)
- `git push heroku master`
- `heroku run rails db:migrate:reset`(初回及びmigrateファイルをいじったときのみ)
- `heroku run rails db:seed`((初回及びseedsdファイルをいじったときのみ))

















`
