class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string :company
      t.string :contact
      t.string :bid_package
      t.string :trade
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
