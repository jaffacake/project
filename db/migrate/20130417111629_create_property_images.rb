class CreatePropertyImages < ActiveRecord::Migration
  def change
    create_table :property_images do |t|

      t.timestamps
    end
  end
end
