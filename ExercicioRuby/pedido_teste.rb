require 'test/unit'
require './pedido'

class PedidoTest < Test::Unit::TestCase

    def setup
    	@p = Pedido.new('id', 'datapedido', 'produto', 'quantidadeproduto', 'valordacompra', 'formaenvio', 'formapagamento', 'idvendedor', 'idcliente', 'idmoderador', 'idproduto')
	end
	def test_id
        assert_equal('id',@p.id)
    end

    def test_datapedido
        assert_equal('datapedido', @p.datapedido)
    end
 	
	def test_produto
        assert_equal('produto', @p.produto)
    end

	def test_quantidadeproduto
        assert_equal('quantidadeproduto', @p.quantidadeproduto)
    end
	
	def test_valordacompra
        assert_equal('valordacompra', @p.valordacompra)
    end

	def test_formaenvio
        assert_equal('formaenvio', @p.formaenvio)
    end

	def test_formapagamento
        assert_equal('formapagamento', @p.formapagamento)
    end

	def test_idvendedor
        assert_equal('idvendedor', @p.idvendedor)
    end

	def test_idcliente
        assert_equal('idcliente', @p.idcliente)
    end

	def test_idmoderador
        assert_equal('idmoderador', @p.idmoderador)
    end

	def test_idproduto
        assert_equal('idproduto', @p.idproduto)
    end

    def teardown
        @p = nil
    end
end
