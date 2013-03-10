class ChangeConversionType < ActiveRecord::Migration
  def change
    change_column :units, :conversion, :float
  end
end
