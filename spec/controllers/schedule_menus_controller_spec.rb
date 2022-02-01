require 'rails_helper'
RSpec.describe ScheduleMenusController, type: :controller do
  let(:end_date) { Date.current + 15.day }
  let!(:menu) { FactoryBot.create(:menu) }
  let(:schedule_menu_params) do
    { menu_dates: { end_date: end_date } }
  end

  describe 'GET index' do
    context 'return the schedule menu until end date' do
      it 'return 200 ' do
        get :index, params: schedule_menu_params
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
