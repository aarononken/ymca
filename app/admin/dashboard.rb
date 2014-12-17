ActiveAdmin.register_page "Dashboard" do
  
#  content :title => proc{ I18n.t("active_admin.dashboard")} do
    
#     columns do
#       column do
#         panel "Child Care" do
#           table_for Check.all do |check|
#             column("First Name")     {|check| check.child.child_first_name }
#             column("Last Name")      {|check| check.child.child_last_name }
#             column("Program")        {|check| check.program.program_name }
#             column("Checked in at")  {|check| check.created_at }
#           end
#         end
        
#         panel "Summer Day Camp" do
#           table_for Child.all do |child|
            
#           end
#         end
        
#         panel "After School" do
#         end
#       end
#     end # columns

#  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

#   content title: proc{ I18n.t("active_admin.dashboard") } do
#     div class: "blank_slate_container", id: "dashboard_default_message" do
#       span class: "blank_slate" do
#         span I18n.t("active_admin.dashboard_welcome.welcome")
#         small I18n.t("active_admin.dashboard_welcome.call_to_action")
#       end
#     end

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

#       column do
#         panel "Info" do
#           para "Welcome to ActiveAdmin."
#         end
#       end
#     end
#  end # content
end
