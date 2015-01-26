class CreateChangeOrders < ActiveRecord::Migration
  def change
    create_table :change_orders do |t|
      t.decimal :pco_num
      t.date :date
      t.string :description
      t.text :discovery
      t.decimal :value
      t.decimal :tstv_estimate
      t.belongs_to :subcontractor, index: true
      t.timestamps null: false
    end
  end
end
