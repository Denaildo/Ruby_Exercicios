class Pedido
		attr_accessor :id, :datapedido, :produto, :quantidadeproduto, :valordacompra, :formaenvio, :formapagamento, :idvendedor, :idcliente, :idmoderador, :idproduto

	def initialize(id, datapedido, produto, quantidadeproduto, valordacompra, formaenvio, formapagamento, idvendedor, idcliente, idmoderador, idproduto)
		@id = id
		@datapedido = datapedido
		@produto = produto
		@quantidadeproduto = quantidadeproduto
		@valordacompra = valordacompra
		@formaenvio = formaenvio
		@formapagamento = formapagamento
		@idvendedor = idvendedor
		@idcliente = idcliente
		@idmoderador = idmoderador
		@idproduto = idproduto
	end
end	
