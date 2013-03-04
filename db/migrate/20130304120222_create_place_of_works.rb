class CreatePlaceOfWorks < ActiveRecord::Migration
  def change
    create_table :place_of_works do |t|

      t.timestamps
    end
  end
end
