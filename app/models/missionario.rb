class Missionario < ActiveRecord::Base
  belongs_to :paroquia
  belongs_to :funcao
end
