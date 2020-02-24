
describe 'Forms' do
    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        #input de dados e mensagem na tela
        fill_in 'userId', with: 'stark' #esta usando ID
        fill_in 'password', with: 'jarvis!'  #esta usando name

        click_button 'Login'

        expect(find('#flash').visible?).to be true

       # expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!'  # pergunta é igual

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'  # pareceido com contains do java, perguntando se esse texto contem

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'  #pergunta se exite o conteudo no elemento


    end
end