module CmsRails
  class Page < ApplicationRecord
    belongs_to :template
    belongs_to :category
  end
end
