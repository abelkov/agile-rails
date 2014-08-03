class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

    	t.column :title, :string
    	t.column :description, :text
    	t.column :image_url, :string
    	t.column :price, :decimal, {precision: 8, scale: 2}
    	t.timestamps
    	
    end
  end
end
