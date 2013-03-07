class CreateLandlordsHasProperties < ActiveRecord::Migration
  def change
    create_table :landlords_has_properties do |t|

      t.timestamps
    end
  end
end
