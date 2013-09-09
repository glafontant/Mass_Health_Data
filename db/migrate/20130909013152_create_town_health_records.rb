class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.integer :senior
      t.integer :youth
      t.integer :low_income
      t.float :teen_birth
      t.float :infant_mortality

      t.timestamps
    end
  end
end
