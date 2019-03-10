require 'spec_helper'
require 'rails_helper'

feature 'create alcoholconsumption' do
scenario "can create alcoholconsumption" do
visit '/alcoholconsumption'
expect(page).to have_content('New Alcoholconsumption')

fill_in 'Entity', :with=>'Albania'
fill_in 'Code', :with=>'ALB'
fill_in 'Year', :with=> 2015        
    fill_in 'Consumption', :with=> 6.6
    fill_in 'Latitude', :with=> 41.153332
    fill_in 'Longitude', :with=> 	20.168331
click_button 'Create Alcoholconsumption'
expect(page).to have_content('Entity: Albania')
expect(page).to have_content('Code: ALB')
end

scenario "can create customers error" do
    visit '/alcoholconsumptions/new'
    expect(page).to have_content('New Alcoholconsumption')
    click_button 'Create Alcoholconsumption'
    expect(page).to have_content('errors prohibited this alcoholconsumption from being saved')
end
end 
