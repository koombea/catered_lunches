require 'rails_helper'

RSpec.describe ScheduleLunch, type: :service do
  describe '#call' do
    context ' valid date' do
      let(:end_date) { Date.current + 15.day }
      let!(:menu) { FactoryBot.create(:menu) }

      it 'return array with all schedule menu' do
        service_result = described_class.new(end_date).call
        expect(service_result).not_to be_empty
        expect(service_result.first).to include(:date, :day, :menu)
      end
    end
  end
end
