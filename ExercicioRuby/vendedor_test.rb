require 'test/unit'
require './vendedor'

class VendedorTest < Test::Unit::TestCase

    def setup
        @v = Vendedor.new('id', 'nome', 'identidade', 'cpf', 'rua', 'bairro', 'cidade', 'estado', 'telefoneum', 'telefonedois')
	end
	def test_id
        assert_equal('id',@v.id)
    end

    def test_nome
        assert_equal('nome', @v.nome)
    end
 	
	def test_identidade
        assert_equal('identidade', @v.identidade)
    end

	def test_cpf
        assert_equal('cpf', @v.cpf)
    end
	
	def test_rua
        assert_equal('rua', @v.rua)
    end

	def test_bairro
        assert_equal('bairro', @v.bairro)
    end

	def test_cidade
        assert_equal('cidade', @v.cidade)
    end


	def test_estado
        assert_equal('estado', @v.estado)
    end

	def test_telefoneum
        assert_equal('telefoneum', @v.telefoneum)
    end

	def test_telefonedois
        assert_equal('telefonedois', @v.telefonedois)
    end

    def teardown
        @v = nil
    end
end
