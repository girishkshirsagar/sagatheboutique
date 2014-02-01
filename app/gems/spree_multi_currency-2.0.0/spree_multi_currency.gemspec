# -*- encoding: utf-8 -*-
# stub: spree_multi_currency 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_multi_currency"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pronix LLC"]
  s.date = "2014-01-30"
  s.description = "spree_multi_currency"
  s.email = ["parallel588@gmail.com", "pronix.service@gmail.com"]
  s.files = [".coveralls.yml", ".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE", "README.markdown", "Rakefile", "app/assets/stylesheets/admin/spree_multi_currency.css", "app/assets/stylesheets/store/spree_multi_currency.css", "app/controllers/spree/admin/currencies_controller.rb", "app/controllers/spree/admin/currency_converters_controller.rb", "app/controllers/spree/base_controller_decorator.rb", "app/controllers/spree/currency_controller.rb", "app/helpers/base_helper_decorator.rb", "app/helpers/number_helper_decorator.rb", "app/models/spree/adjustment_decorator.rb", "app/models/spree/controller_helper_order.rb", "app/models/spree/currency.rb", "app/models/spree/currency_converter.rb", "app/models/spree/line_item_decorator.rb", "app/models/spree/money_decorator.rb", "app/models/spree/order_decorator.rb", "app/models/spree/product_decorator.rb", "app/models/spree/stock/estimator_decorator.rb", "app/models/spree/variant_decorator.rb", "app/overrides/add_currencies_admin_configurations_menu.rb", "app/overrides/add_currency_selection.rb", "app/views/spree/admin/currencies/_form.html.erb", "app/views/spree/admin/currencies/edit.html.erb", "app/views/spree/admin/currencies/index.html.erb", "app/views/spree/admin/currencies/new.html.erb", "app/views/spree/admin/currency_converters/_form.html.erb", "app/views/spree/admin/currency_converters/edit.html.erb", "app/views/spree/admin/currency_converters/index.html.erb", "app/views/spree/admin/currency_converters/new.html.erb", "config/cucumber.yml", "config/locales/currencies.yml", "config/locales/en_multi_currency.yml", "config/locales/ru_multi_currency.yml", "config/routes.rb", "db/migrate/20101109134351_create_currencies.rb", "db/migrate/20101109134453_create_currency_converters.rb", "db/sample/currencies.yml", "db/sample/currency_converters.yml", "db/seeds.rb", "features/products.feature", "features/step_definitions/product.rb", "features/step_definitions/ror_ringer.jpeg", "features/support/env.rb", "features/support/paths.rb", "lib/generators/spree_multi_currency/install/install_generator.rb", "lib/spree_multi_currency.rb", "lib/spree_multi_currency/engine.rb", "lib/tasks/spree_multi_currency.rake", "script/rails", "spec/changing_currency_spec.rb", "spec/controllers/spree/currency_controller_spec.rb", "spec/features/buy_spec.rb", "spec/helpers/number_helper_spec.rb", "spec/models/spree/currency_spec.rb", "spec/models/spree/order_contents_spec.rb", "spec/models/spree/variant_spec.rb", "spec/spec_helper.rb", "spree_multi_currency.gemspec"]
  s.homepage = "http://nanopodcast-pronix.rhcloud.com/"
  s.licenses = ["MIT"]
  s.require_paths = [["lib"]]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.1.11"
  s.summary = "spree_multi_currency"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 2.0.3"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_runtime_dependency(%q<money>, [">= 5.0.0"])
      s.add_runtime_dependency(%q<json>, [">= 1.5.1"])
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, [">= 2.0.3"])
      s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_dependency(%q<money>, [">= 5.0.0"])
      s.add_dependency(%q<json>, [">= 1.5.1"])
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 2.0.3"])
    s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
    s.add_dependency(%q<money>, [">= 5.0.0"])
    s.add_dependency(%q<json>, [">= 1.5.1"])
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end
