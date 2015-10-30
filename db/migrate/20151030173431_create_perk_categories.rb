class CreatePerkCategories < ActiveRecord::Migration
  def change
    create_table :perk_categories do |t|
      t.references :perk
      t.references :category
      t.timestamps null: false
    end
  end
end
