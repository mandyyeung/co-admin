class UpdateChangeOrders < ActiveRecord::Migration
  def change
    add_column :change_orders, :sub_proposal_num, :string
    add_column :change_orders, :status, :string
    add_column :change_orders, :pco_filter, :string
    add_column :change_orders, :type, :string
    add_column :change_orders, :al_num, :decimal
    add_column :change_orders, :ddc_co_num, :decimal
    add_column :change_orders, :sub_co_num, :decimal
    add_column :change_orders, :approximate, :decimal
    add_column :change_orders, :pending, :decimal
    add_column :change_orders, :approved, :decimal
    add_column :change_orders, :sub_proposed_value, :decimal
    add_column :change_orders, :df_submitted, :date
    add_column :change_orders, :df_approved, :date
    add_column :change_orders, :sent_to_ddc, :date
    add_column :change_orders, :ddc_approved, :date
  end
end
