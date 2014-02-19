require 'spec_helper'

describe "treinos/new" do
  before(:each) do
    assign(:treino, stub_model(Treino,
      :objetivo => "MyString",
      :aluno => nil
    ).as_new_record)
  end

  it "renders new treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treinos_path, "post" do
      assert_select "input#treino_objetivo[name=?]", "treino[objetivo]"
      assert_select "input#treino_aluno[name=?]", "treino[aluno]"
    end
  end
end
