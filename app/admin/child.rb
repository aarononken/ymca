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
    
  controller do
    def scoped_collection
      resource_class.includes(:family)
    end
  end
  
  index do
    column :child_first_name
    column :child_last_name
    column "Family" do |child|
      link_to child.family.parent_last_name, admin_family_path(child.family), :sortable => true
    end
    column :created_at
    actions
  end
  
  filter :child_first_name
  filter :child_last_name
  filter :family_parent_last_name, :as => :string, :label => "Family Surname"
  
  form do |f|
    f.inputs "Child Details" do
      f.input :child_first_name, :label => "First Name"
      f.input :child_last_name, :label => "Last Name"
      f.input :family_id, :as => :select, :collection => Family.all.map{ |f| ["#{f.parent_first_name} #{f.parent_last_name}", f.id]}, :label => "Family"
    end
    f.actions
  end
  
end
