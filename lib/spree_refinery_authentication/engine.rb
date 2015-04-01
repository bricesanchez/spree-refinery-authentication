require 'refinery/engine'

module SpreeRefineryAuthentication
  class Engine < Rails::Engine
    include Refinery::Engine
    
    before_inclusion do
      Refinery::Plugin.register do |plugin|
        plugin.name = 'spree_refinery_authentication'
        plugin.pathname = root
        plugin.hide_from_menu = true
        plugin.always_allow_access = true
      end
    end
    
    engine_name "spree_refinery_authentication"

    config.to_prepare do
      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :per, :per_page
      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :num_pages, :total_pages
      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :prev_page, :previous_page
    end
  end
end
