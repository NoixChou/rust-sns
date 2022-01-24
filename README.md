# rust-sns
バックエンドをRust/actix-webで、フロントエンドをVue.js/nuxt.jsで作っているSNSっぽいものです。  
バックエンドはPHP/Laravelのものもあり、切り替えられます。

## 起動
### 前提として、以下が必要です
- Git
- GNU Make
- Docker / Docker-Compose

### 手順
1. リポジトリ `rust-sns` をcloneします。  
   - `git clone git@github.com:NoixChou/rust-sns.git`
2. `make init` でセットアップします。
   - これにより、自動で必要なリポジトリ `rust-sns-api` `rust-sns-web` `rust-sns-laravel-api` がcloneされ、 `.env.example` をコピーして `.env` が生成されます。
3. 各リポジトリ内の `.env` を調整します。
   - **特に `rust-sns-api` の `FRONTEND_URL`**
4. `make up` で各サービスがDocker上で起動します。
   - `make up` : バックエンドが `rust-sns-api` (Rust/actix-web) で起動
   - `make up-php` : バックエンドが `rust-sns-laravel-api` (PHP/Laravel) で起動

## 停止
`make down` で `rust-sns` の全サービスが停止します。

## 更新
`make update` で `rust-sns` と各リポジトリをリモートからrebase pullします。
