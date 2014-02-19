require 'spec_helper'

describe "treinos/edit" do
  before(:each) do
    @treino = assign(:treino, stub_model(Treino,
      :objetivo => "MyString",
      :aluno => nil
    ))
  end

  it "renders the edit treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treino_path(@treino), "post" do
      assert_select "input#treino_objetivo[name=?]", "treino[objetivo]"
      assert_select "input#treino_aluno[name=?]", "treino[aluno]"
    end
  end
end
