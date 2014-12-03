ActiveAdmin.register_page "Dashboard" do
  content :title => proc{ I18n.t("active_admin.dashboard")} do
    
    columns do
      column do
        panel "Child Care" do
        end
        
        panel "Summer Day Camp" do
        end
        
        panel "After School" do
        end
      end
    end # columns
  end # content
end
