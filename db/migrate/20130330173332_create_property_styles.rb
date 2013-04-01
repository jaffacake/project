class CreatePropertyStyles < ActiveRecord::Migration
  def change
    create_table :property_styles do |t|

      t.timestamps
    end
  end
end
