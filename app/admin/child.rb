ActiveAdmin.register Child do


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
  index do
    column :child_first_name
    column :child_last_name
    column "Family" do |child|
      link_to child.family.parent_last_name, admin_family_path(child.family)
    end
    column :created_at
    actions
  end
end
