require_relative 'spec_helper'
require_relative 'support/paging_shared_example'
require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ':memory:'

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :products, force: true do |t|
    t.string :name
    t.string :category_name
    t.integer :price

    t.timestamps null: true
  end
end

class Product < ActiveRecord::Base
end
