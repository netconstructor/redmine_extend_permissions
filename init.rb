require 'redmine'
require 'logger'

Redmine::Plugin.register :redmine_hide_fields do
  name 'Redmine Hide Fields plugin'
  author 'Aaron Addleman'
  description 'This is a plugin for Redmine to hide fields with javascript'
  version '0.0.5'
  url 'http://9thport.net/2011/03/20/redmine-hide-assigned-to-field-with-role-permissions-plugin/'
  author_url 'http://9thport.net/about'
  
  # define permissions available to roles
  
  permission :view_issue_assigned_to, :issues => :index
  permission :view_issue_parent_issue_id, :issues => :index
  permission :view_issue_done_ratio, :issues => :index

  # set help link to a wiki page
  # Redmine::MenuManager.map :top_menu do |menu|
  #   menu.push :help_me, , :last => true
  # end  
  
end

# require hook for hiding fields
require 'redmine_hide_fields/hooks/hide_fields'