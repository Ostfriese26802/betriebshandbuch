class Server < ApplicationRecord
  belongs_to :kunde
  belongs_to :betriebssystem
  has_many  :komponente
end
