ActiveAdmin.register Subcontractor do

  permit_params :user_id, :company, :contact, :bid_package, :trade

  form do |f|
    f.inputs "New" do
      f.input :user, member_label: Proc.new { |u| "#{u.first_name} #{u.last_name}"}
      f.input :company
      f.input :contact
      f.input :bid_package
      f.input :trade
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column "BP#", :bid_package
    column :trade
    column :company
    column :contact
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
