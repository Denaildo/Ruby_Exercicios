class Moderador

	attr_accessor :id, :nome, :identidade, :cpf, :endereco, :telefone
	def initialize(id, nome, identidade, cpf, endereco, telefone)
		@id = id
		@nome = nome
		@identidade = identidade
		@cpf = cpf
		@endereco = endereco
		@telefone = telefone

	end
end

