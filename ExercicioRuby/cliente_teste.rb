require 'test/unit'
require './cliente'

class ClienteTest < Test::Unit::TestCase

    def setup
        @c = Cliente.new('id', 'nome', 'identidade', 'cpf')
    end

    def test_id
        assert_equal('id',@c.id)
    end

    def test_nome
        assert_equal('nome', @c.nome)
    end
 	
	def test_identidade
        assert_equal('identidade', @c.identidade)
    end

	def test_cpf
        assert_equal('cpf', @c.cpf)
    end


    def teardown
        @c = nil
    end
end
