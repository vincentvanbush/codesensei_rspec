require_relative 'converter'

RSpec.describe Converter do
  let(:converter) { Converter.new(currencies) }

  let(:currencies) do
    { usd: 3.73, eur: 4.31 }
  end

  describe '#convert_to_currency' do
    context 'when tested currency is given' do
      let(:currencies) do
        { usd: 3.73, eur: 4.31 }
      end

      it 'converts to given currency' do
        expect(converter.convert_to_currency(18.65, :usd)).to eq 5
      end
    end

    context 'when tested currency is not given' do
      let(:currencies) do
        { eur: 4.31 }
      end

      it 'converts to given currency' do
        expect(converter.convert_to_currency(18.65, :usd)).to eq nil
      end
    end
  end
end
