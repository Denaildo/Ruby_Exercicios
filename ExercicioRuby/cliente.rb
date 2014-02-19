class Cliente


	attr_accessor :id, :nome, :identidade, :cpf
	def initialize(id, nome, identidade, cpf)
		@id = id
		@nome = nome
		@identidade = identidade
		@cpf = cpf
	end
end


