class ScheduleLunch
  def initialize(end_date)
    @end_date = (end_date.to_date).next_occurring(:friday)
    @start_date = Date.current
    @weeks = Menu.distinct.pluck(:week_number).sort
  end

  def call
    lunch_info = []
    week = @weeks.first
    (@start_date..@end_date).each do |date|
      day = Date::DAYNAMES[date.cwday]
      menu_name = Menu.find_by(day_menu: day, week_number: week)
      next unless menu_name.present?

      lunch_info << { date: date, menu: menu_name.name, day: day }

      week = next_week(week) if day == 'Friday'
    end
    lunch_info
  end

  def next_week(current_week)
    current_week_index = @weeks.index(current_week)
    week = @weeks[current_week_index + 1]

    if week.present?
      week
    else
      @weeks.first
    end
  end
end
