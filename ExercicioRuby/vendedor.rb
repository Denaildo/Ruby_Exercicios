class Vendedor

	attr_accessor :id, :nome, :identidade, :cpf, :rua, :bairro, :cidade, :estado, :telefoneum, :telefonedois
	def initialize(id, nome, identidade, cpf, rua, bairro, cidade, estado, telefoneum, telefonedois)
		@id = id
		@nome = nome
		@identidade = identidade
		@cpf = cpf
		@rua = rua
		@bairro = bairro
		@cidade = cidade
		@estado = estado
		@telefoneum = telefoneum		
		@telefonedois = telefonedois	

	end
end

