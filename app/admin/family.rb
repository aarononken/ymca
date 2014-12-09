ActiveAdmin.register Family do

  controller do
    before_action :set_secure_password, only: [:create, :update]
    
    def set_secure_password
      params[:family][:password] = SecureRandom.hex(2)
    end
  end
#   See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  permit_params :parent_first_name, :parent_last_name, :spouse_name, :phone, :address, :password
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    column :parent_first_name
    column :parent_last_name
    column :spouse_name
    column :phone
    column :address
    actions
  end
  
  filter :parent_first_name
  filter :parent_last_name
  filter :phone
  filter :address
  
end
