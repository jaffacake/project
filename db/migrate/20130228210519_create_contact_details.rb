class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|

      t.timestamps
    end
  end
end
