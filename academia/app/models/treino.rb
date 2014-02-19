class Treino < ActiveRecord::Base
  belongs_to :aluno
  attr_accessible :datainicio, :objetivo, :aluno_id
end
