ActiveAdmin.register Membership do


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
    column "First Name" do |membership|
      membership.child.child_first_name
    end
    column "Last Name" do |membership|
      membership.child.child_last_name
    end
    column "Program" do |membership|
      membership.program.program_name
    end
    actions
  end
  
  filter :child_child_first_name, :as => :string, :label => "First Name"
  filter :child_child_last_name, :as => :string, :label => "Last Name"
  filter :program_program_name, :as => :select, :collection => Program.all.map(&:program_name), :label => "Program Name"
  
  form do |f|
    f.inputs "Membership Details" do
      f.input :child_id
      f.input :family_id
      f.input :program_id
    end
    f.actions
  end
end
