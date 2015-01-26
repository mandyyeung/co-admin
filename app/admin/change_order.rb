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
