class Merchant < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged


  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
