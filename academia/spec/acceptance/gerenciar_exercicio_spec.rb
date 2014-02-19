# coding: utf-8

require 'spec_helper'

feature 'gerenciar exercicio' do

  scenario 'incluir exercicio' do # , :js => true  do

    visit new_exercicio_path
    preencher_e_verificar_exercicio

    

  end

  scenario 'alterar exercicio' do #, :js => true  do

    exercicio = FactoryGirl.create(:exercicio)
    visit edit_exercicio_path(exercicio)
    preencher_e_verificar_exercicio



  end

   scenario 'excluir exercicio' do #, :javascript => true  do

       exercicio = FactoryGirl.create(:exercicio)

       visit exercicios_path

       click_link 'Excluir'

    

  end
  def preencher_e_verificar_exercicio

      fill_in 'Descricao',  :with => "Descricao"

        
 
      click_button 'Salvar'

      page.should have_content 'Descricao: Descricao'

   end
end
