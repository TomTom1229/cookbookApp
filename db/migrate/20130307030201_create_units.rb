class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name, null: false
      t.string :short_name, null: false
      t.string :type, default: "Volume"
      t.decimal :conversion, precision: 4, default: 1
    end

    add_column :ingredients_recipes, :unit_id, :integer
  end
end
