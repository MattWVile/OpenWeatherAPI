require 'rspec'
# require 'rspec-mocks'
require_relative 'json_injector'

describe 'MockTest' do
  before :all do
    @json_Injector= double(JsonInjector)
  end


  context 'when condition' do
    it 'succeeds' do
      @json_Injector.stub(:getHashMapResponse).and_return("hi")
      answer = @json_Injector.getHashMapResponse
      expect(answer).to eq("hi")
    end
  end
end
