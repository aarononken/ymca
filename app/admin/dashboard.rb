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

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
