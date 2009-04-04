class Telefone < ActiveRecord::Base
  belongs_to :missionario
  belongs_to :tipo_telefone
end
