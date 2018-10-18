def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Vin Diesel'
  fill_in :player_2_name, with: 'The Rock'
  click_button 'Submit'
end

def attack_one_player
  click_button 'Attack'
  click_button 'OK'
end

def attack_both_player
  2.times { attack_one_player }
end
