# coding: utf-8
require 'spec_helper'

feature 'gerenciar treino' do

  scenario 'incluir treino' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => 'XXX')
    visit new_treino_path
    preencher_e_verificar_treino 
  end

  scenario 'alterar treino' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => 'XXX')
    treino = FactoryGirl.create(:treino,:aluno => aluno)
    visit edit_treino_path(treino)
    preencher_e_verificar_treino
  end

  scenario 'excluir treino' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => 'XXX')
    treino = FactoryGirl.create(:treino,:aluno => aluno)
    visit treinos_path
    click_link 'Excluir' 
  end

  def preencher_e_verificar_treino

    
#    select Date.today.to_s(:db), :from => 'Data Inicio'
    fill_in 'Data Inicio', :with => '2013-07-08'
    fill_in 'Objetivo', :with => 'Objetivo'
    select 'XXX', :from => 'Aluno'
    
    click_button 'Salvar'
    
   
    page.should have_content 'Data Inicio: 2013-07-08'
	page.should have_content 'Objetivo: Objetivo'
    page.should have_content 'Aluno: XXX'
  end    

end
