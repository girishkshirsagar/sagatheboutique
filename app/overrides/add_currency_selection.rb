# encoding: utf-8
Deface::Override.new(virtual_path: "spree/shared/_main_nav_bar",
                     name: "currencies_admin_configurations_menu",
                     insert_bottom: "ul#main-nav-bar",
                     disabled: false,
                     text: "
                     ")
