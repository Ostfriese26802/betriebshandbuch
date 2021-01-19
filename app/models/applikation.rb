class Applikation < ApplicationRecord
  belongs_to :kunde
  has_many :komponente
end
