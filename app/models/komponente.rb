class Komponente < ApplicationRecord
  belongs_to :applikation
  belongs_to :server


  def komponente_mit_host
    applikationsname = Applikation.find(applikation_id).name
    hostname = Server.find(server_id).name
    stufenname = Stufe.find(stufe_id).name
    "#{applikationsname} - #{stufenname} - #{hostname} - #{name}"
  end
end
