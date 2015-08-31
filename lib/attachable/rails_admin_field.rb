module Attachable
  module RailsAdminField
    class Attachments < RailsAdmin::Config::Actions::Base
      RailsAdmin::Config::Fields::Types.register(self)
      register_instance_option :partial do
        proc do
          :form_attachments
        end
      end
    end
  end
end