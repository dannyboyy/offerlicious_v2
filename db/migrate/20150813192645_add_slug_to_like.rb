class AddSlugToLike < ActiveRecord::Migration
  def change
    add_column :likes, :slug, :string
    add_index :likes, :slug, unique: true
  end
end
