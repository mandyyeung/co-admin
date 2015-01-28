ActiveAdmin.register ChangeOrder do

  permit_params :subcontractor_id, :pco_num, :date, :description, :discovery, :value, :tstv_estimate

  form do |f|
    f.inputs "New" do
      f.input :subcontractor, member_label: Proc.new { |s| "BP##{s.bid_package} - #{s.company} - #{s.trade}"}
      f.input :pco_num
      f.input :date
      f.input :description
      f.input :discovery
      f.input :value
      f.input :tstv_estimate
      f.input :sub_proposal_num
      f.input :status
      f.input :pco_filter
      f.input :type
      f.input :al_num
      f.input :ddc_co_num
      f.input :sub_co_num
      f.input :approximate
      f.input :pending
      f.input :approved
      f.input :sub_proposed_value
      f.input :df_submitted
      f.input :df_approved
      f.input :sent_to_ddc
      f.input :ddc_approved
    end
    f.actions
  end

  index do
    selectable_column
    column :subcontractor do |s|
      "BP#" + s.subcontractor.bid_package + " - " + s.subcontractor.trade
    end
    column :pco_num
    column :description
    column :value
    column :tstv_estimate
    column :updated_at
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
