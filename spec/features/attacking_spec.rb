feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    attack_one_player
    expect(page).not_to have_content 'The Rock: 60HP'
    expect(page).to have_content 'The Rock: 50HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_one_player
    click_button 'Attack'
    expect(page).to have_content 'The Rock attacked Vin Diesel'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    2.times { attack_one_player }
    expect(page).not_to have_content 'Vin Diesel: 60HP'
    expect(page).to have_content 'Vin Diesel: 50HP'
  end
end
