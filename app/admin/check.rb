ActiveAdmin.register Check do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  permit_params :family_id, :child_id, :checked_in, :program_id
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  
  config.per_page = 10
  
  index do
    selectable_column
    column "First Name" do |check|
      check.child.child_first_name
    end
    column "Last Name" do |check|
      check.child.child_last_name
    end
    column "Checked In" do |check|
      check.checked_in
    end
    column "Program" do |check|
      check.program.program_name
    end
    column do |check|
      check.created_at
    end
    actions
  end
  
  filter :child_child_first_name, :as => :string, :label => "First Name"
  filter :child_child_last_name, :as => :string, :label => "Last Name"
  filter :checked_in, :as => :select
  filter :program_program_name, :as => :select, :collection => Program.all.map(&:program_name), :label => "Program Name"
  filter :created_at, :as => :date_range

  form do |f|
    f.inputs "Check Details" do
      f.input :child_id, :as => :select, :collection => Child.all.map{ |c| ["#{c.child_first_name} #{c.child_last_name}", c.id]}, :label => "Child"
      f.input :family_id, :as => :select, :collection => Family.all.map{ |f| ["#{f.parent_first_name} #{f.parent_last_name}", f.id]}, :label => "Family"
      f.input :program_id, :as => :select, :collection => Program.all.map{ |p| ["#{p.program_name}", p.id]}, :label => "Program"
      f.input :checked_in, :as => :boolean, :label => "Checked in"
    end
    f.actions
  end
end
