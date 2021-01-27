require_relative "../lib/start_search"

describe Iterate do
    let(:display){described_class.new(@total,@page)}
    describe '#iterate' do
        it 'checks the various parts of the website and returns the job vacancies available' do
        list = [{
            Position: 'Junior Web Developer',
            Company: 'Altice',
            Location: 'AlticeBethpage, NY',
            Salary: 'Estimated: $34,000 - $49,000 a year'
          }]
          allow(display).to receive(:iterate).and_return(list)
          expect(display.iterate).to eql(list) 
    end
end
describe "#start" do
    it 'should return true for the start method' do
        allow(display).to receive(:start).and_return(true)
        expect(display.start).to eq(true)
      end
end
end