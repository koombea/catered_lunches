class ScheduleMenusController < ApplicationController
  def index
    end_date = schedule_menu_params.present? ? schedule_menu_params['menu_dates']['end_date'] : Date.current
    @menus = ScheduleLunch.new(end_date).call
  end

  private

  def schedule_menu_params
    params.permit(menu_dates: :end_date)
  end
end
