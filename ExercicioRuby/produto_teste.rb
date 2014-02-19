require 'test/unit'
require './produto'

class ProdutoTest < Test::Unit::TestCase

    def setup
    	@p = Produto.new('id', 'nome', 'fabricante', 'datafabricacao', 'preco')
	end
	def test_id
        assert_equal('id',@p.id)
    end

    def test_nome
        assert_equal('nome', @p.nome)
    end
 	
	def test_fabricante
        assert_equal('fabricante', @p.fabricante)
    end

	def test_datafabricacao
        assert_equal('datafabricacao', @p.datafabricacao)
    end
	
	def test_rua
        assert_equal('preco', @p.preco)
    end

    def teardown
        @p = nil
    end
end
