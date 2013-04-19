class CreateFrontEnds < ActiveRecord::Migration
  def change
    create_table :front_ends do |t|

      t.timestamps
    end
  end
end
