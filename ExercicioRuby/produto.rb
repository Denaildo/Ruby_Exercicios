class Produto

	attr_accessor :id, :nome, :fabricante, :datafabricacao, :preco
	def initialize(id, nome, fabricante, datafabricacao, preco)
		@id = id
		@nome = nome
		@fabricante = fabricante
		@datafabricacao = datafabricacao
		@preco = preco
	end
end


