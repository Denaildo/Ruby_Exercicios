require 'spec_helper'

describe "serietreinos/new" do
  before(:each) do
    assign(:serietreino, stub_model(Serietreino,
      :quantidade => 1,
      :repeticao => 1,
      :treino => nil,
      :exercicio => nil
    ).as_new_record)
  end

  it "renders new serietreino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", serietreinos_path, "post" do
      assert_select "input#serietreino_quantidade[name=?]", "serietreino[quantidade]"
      assert_select "input#serietreino_repeticao[name=?]", "serietreino[repeticao]"
      assert_select "input#serietreino_treino[name=?]", "serietreino[treino]"
      assert_select "input#serietreino_exercicio[name=?]", "serietreino[exercicio]"
    end
  end
end
