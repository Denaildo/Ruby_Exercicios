# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno' do

  scenario 'incluir aluno' do # , :js => true  do

    visit new_aluno_path
    preencher_e_verificar_aluno

    

  end

  scenario 'alterar aluno' do #, :js => true  do

    aluno = FactoryGirl.create(:aluno)
    visit edit_aluno_path(aluno)
    preencher_e_verificar_aluno



  end

   scenario 'excluir aluno' do #, :javascript => true  do

       aluno = FactoryGirl.create(:aluno)

       visit alunos_path

       click_link 'Excluir'

    

  end
  def preencher_e_verificar_aluno

      fill_in 'Nome',  :with => "Nome"
	  fill_in 'Idade', :with => "Idade"
      fill_in 'Sexo', :with => "Sexo"

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: Nome'
	  page.should have_content 'Idade: Idade'	
      page.should have_content 'Sexo: Sexo'
      

   end
end
