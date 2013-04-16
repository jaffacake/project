class CreateTenancyAgreements < ActiveRecord::Migration
  def change
    create_table :tenancy_agreements do |t|

      t.timestamps
    end
  end
end
