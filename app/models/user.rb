# string "name"
# string "email"

class User < ApplicationRecord
  has_one_attached :avatar
  validates :name, presence: true
  validates :avatar, images: { purge: true, content_type: %r{\Aimage/(png|jpeg)\Z}, maximum: 524_288_000 }
end
