class Serietreino < ActiveRecord::Base
  belongs_to :treino
  belongs_to :exercicio
  attr_accessible :quantidade, :repeticao, :treino_id, :exercicio_id
end
