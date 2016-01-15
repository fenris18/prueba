class CreateOrganizationalUnits < ActiveRecord::Migration
  def change
    create_table :organizational_units do |t|
      t.string :code
      t.string :cost_center
      t.string :name
      t.string :description
      t.string :organizational_unit_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
