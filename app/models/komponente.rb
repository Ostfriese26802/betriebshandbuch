class Komponente < ApplicationRecord
  belongs_to :applikation
  belongs_to :server
end
