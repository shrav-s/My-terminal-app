require_relative('../method')
require_relative('../user_class')

describe 'response' do
    it 'It should let user to exit the program' do
        expect(response('n')).to eq (true)
    end
end

describe 'display' do
    it 'It should display user score' do
        expect((User.new("abc", 20)).display).to eq ('Hi abc your total score is 20')
    end
end

#     describe "output.to_stdout matcher" do
#      it 'returns the chosen mode in case of valid input' do
#         menu.stub(:gets).and_return("2\n")
#     expect { menu(User.new("abc",20)) }.to output('Hi abc your total score is 20').to_stdout 
#      end
# end