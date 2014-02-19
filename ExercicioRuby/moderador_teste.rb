require 'test/unit'
require './moderador'

class ModeradorTest < Test::Unit::TestCase

    def setup
        @m = Moderador.new('id', 'nome', 'identidade', 'cpf', 'endereco', 'telefone')
	end
	def test_id
        assert_equal('id',@m.id)
    end

    def test_nome
        assert_equal('nome', @m.nome)
    end
 	
	def test_identidade
        assert_equal('identidade', @m.identidade)
    end

	def test_cpf
        assert_equal('cpf', @m.cpf)
    end
	
	def test_endereco
        assert_equal('endereco', @m.endereco)
    end

	def test_telefone
        assert_equal('telefone', @m.telefone)
    end


    def teardown
        @m = nil
    end
end
