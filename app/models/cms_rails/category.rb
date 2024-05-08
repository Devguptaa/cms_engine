module CmsRails
  class Category < ApplicationRecord
    has_many :templates
  end
end
