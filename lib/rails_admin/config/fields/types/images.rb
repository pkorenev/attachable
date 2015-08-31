module RailsAdmin
  module Config
    module Fields
      module Types
        class Images < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types.register(self)



          register_instance_option :partial do
            :form_attachments
            # proc do
            #   :form_attachments
            # end
          end
        end
      end
    end
  end
end