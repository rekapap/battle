def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Vin Diesel'
  fill_in :player_2_name, with: 'The Rock'
  click_button 'Submit'
end
