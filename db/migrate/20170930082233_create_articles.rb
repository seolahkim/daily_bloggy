class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer        :category_id, limit: 8
      t.string         :title
      t.text           :content
      t.datetime       :created_at
      t.datetime       :updated_at
      t.timestamps
    end
  end
end
