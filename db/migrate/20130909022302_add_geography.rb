class AddGeography < ActiveRecord::Migration
  def change
    add_column :town_health_records, :geography, :string
  end
end
