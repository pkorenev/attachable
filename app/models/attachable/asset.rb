# == Schema Information
#
# Table name: assets
#
#  id                   :integer          not null, primary key
#  assetable_id         :integer
#  assetable_type       :string
#  assetable_field_name :string
#  data_file_name       :string
#  data_content_type    :string
#  data_file_size       :integer
#  data_updated_at      :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Attachable::Asset < ActiveRecord::Base
  self.table_name = :assets

  belongs_to :assetable, polymorphic: true

  has_attached_file :data, styles: proc {|attachment| attachment.instance.attachment_styles }

  do_not_validate_attachment_file_type :data if respond_to?(:do_not_validate_attachment_file_type)

  delegate :url, :path, :exists?, :styles, to: :data

  def attachment_styles
    self.assetable.send("#{self.assetable_field_name}_styles")
  end

  rails_admin do
    visible false

    nested do
      configure :assetable do
        hide
      end

      configure :assetable_field_name do
        hide
      end
    end
  end
end
