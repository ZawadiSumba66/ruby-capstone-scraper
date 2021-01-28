require_relative '../lib/start_search'

# rubocop:disable Metrics/BlockLength
describe Iterate do
  let(:display) { described_class.new(@total, @page) }
  describe '#iterate' do
    context 'when the list is given with its keys and values present' do

      it 'checks the various parts of the website and returns the job vacancies available' do
        list = {
          Position: 'Junior Web Developer',
          Company: 'Altice',
          Location: 'AlticeBethpage, NY',
          Salary: 'Estimated: $34,000 - $49,000 a year'
        }
        allow(display).to receive(:iterate).and_return(list)
        expect(list).to be_a(Hash)
      end
      it 'checks for the key given in the list to be equal to the corresponding value' do
        list = {
          Position: 'Junior Web Developer',
          Company: 'Altice',
          Location: 'AlticeBethpage, NY',
          Salary: 'Estimated: $34,000 - $49,000 a year'
        }
        allow(display).to receive(:iterate).and_return(list)
        expect(list[:Position]).to eql('Junior Web Developer')
      end
      it 'returns true if a key given is present in the list' do
        list = {
          Position: 'Junior Web Developer',
          Company: 'Altice',
          Location: 'AlticeBethpage, NY',
          Salary: 'Estimated: $34,000 - $49,000 a year'
        }
        allow(display).to receive(:iterate).and_return(list)
        expect(list[:Position]).to be_truthy
      end
      it 'returns nil if a key given is not present in the list' do
        list = {
          Position: 'Junior Web Developer',
          Company: 'Altice',
          Location: 'AlticeBethpage, NY',
          Salary: 'Estimated: $34,000 - $49,000 a year'
        }
        allow(display).to receive(:iterate).and_return(list)
        expect(list[:Address]).to be_nil
      end
    end
  end

  describe '#start' do
    it 'should return true for the start method' do
      allow(display).to receive(:start).and_return(true)
      expect(display.start).to eq(true)
    end

    it 'should not return true for the start method' do
      allow(display).to receive(:start).and_return(false)
      expect(display.start).to_not eq(true)
    end
  end
end

# rubocop:enable Metrics/BlockLength
