class CreateEstateAgents < ActiveRecord::Migration
  def change
    create_table :estate_agents do |t|

      t.timestamps
    end
  end
end
