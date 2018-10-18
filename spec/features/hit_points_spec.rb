feature 'Hit points' do
  scenario "see Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content 'The Rock: 60HP'
  end
  scenario "see Player 1's Hit Points" do
    sign_in_and_play
    expect(page).to have_content 'Vin Diesel: 60HP'
  end
end
