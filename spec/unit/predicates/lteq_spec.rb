require 'dry/validation/predicates'

RSpec.describe Dry::Validation::Predicates do
  describe '#lteq?' do
    let(:predicate_name) { :lteq? }

    context 'when value is less than n' do
      let(:arguments_list) do
        [
          [13, 12]
        ]
      end

      it_behaves_like 'a passing predicate'
    end

    context 'when value is equal to n' do
      let(:arguments_list) do
        [
          [13, 13]
        ]
      end

      it_behaves_like 'a passing predicate'
    end

    context 'with value is greater than n' do
      let(:arguments_list) do
        [
          [13, 14]
        ]
      end

      it_behaves_like 'a failing predicate'
    end
  end
end