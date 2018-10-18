# feature 'Poisoning' do
#   context 'whean dealing poison damage' do
#     before do
#       allow(Kernel).to receive(:rand).and_return(10)
#     end
#     scenario 'reduce Player 2 HP by 3' do
#       sign_in_and_play
#       poison_one_player
#       expect(page).not_to have_content 'The Rock: 60HP'
#       expect(page).to have_content 'The Rock: 57HP'
#     end

#     scenario 'reduce Player 2 HP by 3' do
#       sign_in_and_play
#       2.times { poison_one_player }
#       expect(page).not_to have_content 'Vin Diesel: 60HP'
#       expect(page).to have_content 'Vin Diesel: 57HP'
#     end

#     scenario 'reduce Player 2 HP by 3, three times' do
#       sign_in_and_play
#       poison_one_player
#       attack_one_player
#       attack_one_player
#       attack_one_player
#       attack_one_player
#       expect(page).not_to have_content 'Vin Diesel: 60HP'
#       expect(page).to have_content 'Vin Diesel: 31HP'
#     end

#   end
#   scenario 'be poisoned by Player 2' do
#     sign_in_and_play
#     poison_one_player
#     click_button 'Attack'
#     expect(page).to have_content 'The Rock poisoned Vin Diesel'
#   end
# end
