class AddImageUrlToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :image_url, :string
  end
end
