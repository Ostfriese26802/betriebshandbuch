class Monitoring < ApplicationRecord
    def name_mit_werte
        "#{name}(#{werte})"
      end
end
