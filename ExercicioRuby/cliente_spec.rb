require './cliente'

describe Cliente do
	before(:each) do
		@c = Cliente.new('id', 'nome', 'identidade', 'cpf')
	end
	it 'inserir id' do
		@c.id.should == 'id'
	end
		it 'inserir nome' do
		@c.nome.should == 'nome'
	end
	it 'inserir identidade' do
		@c.identidade.should == 'identidade'
	end
		it 'inserir cpf' do
		@c.cpf.should == 'cpf'
	end

	after(:each) do
		@c = nil
	end
end

