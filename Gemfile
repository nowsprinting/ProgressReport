source 'https://rubygems.org'

# ---------- featureに応じて追加したgem ----------

gem 'bootstrap-sass'
gem 'sprockets'

# 検索用ransack
gem 'rails-i18n'
gem 'ransack'

# ログイン認証追加
gem 'devise'

# URLを自動でリンクにする
gem 'rails_autolink'

# iconなど
gem 'font-awesome-rails'

# turbolinksでjQueryの $(document).ready() を使う
gem 'jquery-turbolinks'

# 一覧画面のページング(paginate)を使う
# http://ruby-rails.hatenadiary.com/entry/20141113/1415874683
gem 'kaminari'

# bootstrapのモーダル
gem 'bootstrap-modal-rails'

# カレンダー
gem 'fullcalendar-rails'
gem 'momentjs-rails'
# ---------- 基本的なgem ----------

# 追加（HerokuデプロイでWARNINGがでるから）
ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# ---------- 場合分けするgem ----------

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
group :development do
  gem 'sqlite3'
end
# 追加
group :production, :docker do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# ---------- RSpec用 ----------
group :development, :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.4.1'
end

group :test do
  gem 'faker', '~> 1.4.3'
  gem 'capybara', '~> 2.4.3'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'launchy', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
end
