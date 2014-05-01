class Hospital < ActiveRecord::Base
  has_many :join_tables
  has_many :patients, through: :join_tables
  has_many :doctors, as: :doctorable
  validates :name, presence: true
end
