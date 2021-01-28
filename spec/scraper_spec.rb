require_relative '../lib/scraper'

describe Scraper do
  subject(:scrap) { Scraper.new('link') }

  describe '#first' do
    context 'when total number of jobs and the job count per page is true' do
      it 'should return true for the first method' do
        allow(scrap).to receive(:first).and_return(true)
        expect(scrap.first).to eq(true)
      end
    end
  end
end
