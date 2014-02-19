# coding: utf-8
require 'spec_helper'

feature 'gerenciar serietreino' do

  scenario 'incluir serietreino' do #, :javascript => true do
    treino = FactoryGirl.create(:treino, :objetivo => 'XXX')
    exercicio = FactoryGirl.create(:exercicio, :descricao => 'XXX')
    visit new_serietreino_path
    preencher_e_verificar_serietreino
  end

  scenario 'alterar serietreino' do #, :javascript => true do
    treino = FactoryGirl.create(:treino, :objetivo => 'XXX')
    exercicio = FactoryGirl.create(:exercicio, :descricao => 'XXX')
    serietreino = FactoryGirl.create(:serietreino,:treino => treino,:exercicio => exercicio)
    visit edit_serietreino_path(serietreino)
    preencher_e_verificar_serietreino
  end

  scenario 'excluir serietreino' do #, :javascript => true do
    treino = FactoryGirl.create(:treino, :objetivo => 'XXX')
    exercicio = FactoryGirl.create(:exercicio, :descricao => 'XXX')
    serietreino = FactoryGirl.create(:serietreino,:treino => treino,:exercicio => exercicio)
    visit serietreinos_path
    click_link 'Excluir' 
  end

  def preencher_e_verificar_serietreino

    
    fill_in 'Quantidade', :with => 2
    fill_in 'Repeticao', :with => 2
    select 'XXX', :from => 'Treino'
	select 'XXX', :from => 'Exercicio'
    
    click_button 'Salvar'
    
   
    page.should have_content 'Quantidade: 2'
	page.should have_content 'Repeticao: 2'
    page.should have_content 'Treino: XXX'
	page.should have_content 'Exercicio: XXX'	
  end    

end
