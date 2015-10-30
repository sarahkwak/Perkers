class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :location
      t.belongs_to :perk, index: true
      t.timestamps null: false
    end
  end
end
