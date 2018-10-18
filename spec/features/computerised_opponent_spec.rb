# As a lonely Player,
# So I can keep my Battle skills up to scratch
# I want to play a Computerised opponent

feature 'Playing vs. a Computer' do
  scenario 'computer gets an automatic name' do
    sign_in_and_play(computer_opponent: true)
    expect(page).to have_content 'Vin Diesel vs. Computer'
  end

  scenario 'computer makes an attack' do
    sign_in_and_play(computer_opponent: true)
    attack_one_player
    click_button 'Attack'
    expect(page).to have_content 'Computer attacked Vin Diesel'
  end

  scenario 'computer attack damages player' do
    sign_in_and_play(computer_opponent: true)
    attack_one_player
    expect(page).not_to have_content 'Computer: 60HP'
  end

  scenario 'computer can lose' do
    sign_in_and_play(computer_opponent: true)
    allow(Kernel).to receive(:rand).and_return(60)
    click_button 'Attack'
    expect(page).to have_content 'Computer loses!'
  end

  scenario 'computer can win' do
    sign_in_and_play(computer_opponent: true)
    attack_one_player
    allow(Kernel).to receive(:rand).and_return(60)
    click_button 'Attack'
    expect(page).to have_content 'Vin Diesel loses!'
  end
end
