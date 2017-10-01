class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.text           :parent
      t.references     :parent
      t.timestamps
    end
  end
end
