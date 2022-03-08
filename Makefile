# docker-composeコマンド
up:
	docker-compose up -d
build:
	docker-compose up -d --build
down:
	docker-compose down
restart:
	docker-compose down
	docker-compose up -d --build

start:
	docker-compose down
	docker-compose up -d --build
	make launch-storybook

# nuxtの導入(ファイルの追記あり)
nuxt:
	npx create-nuxt-app frontend
	cp .env.example .env
	docker-compose up -d --build
	docker-compose exec front yarn add @nuxt/http @nuxtjs/proxy @nuxtjs/dotenv
	docker-compose exec front touch .env
	docker-compose exec front yarn add -D sass sass-loader@10

# typescriptの導入(ファイルの追記あり)
typescript:
	docker-compose exec front yarn add -D @nuxt/types
	docker-compose exec front touch shims-vue.d.ts

# composition-apiの導入(ファイルの追記あり)
composition-api:
	docker-compose exec front yarn add @nuxtjs/composition-api

# storybookの導入(ファイルの追記あり)
storybook:
	docker-compose exec front yarn add -D @nuxtjs/storybook ts-node @nuxt/postcss8 postcss autoprefixer

# storybookの起動
launch-storybook:
	docker-compose exec front yarn nuxt storybook

# storybookをビルド
build-storybook:
	docker-compose exec front yarn nuxt storybook build
