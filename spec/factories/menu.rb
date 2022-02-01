# frozen_string_literal: true

FactoryBot.define do
  factory :menu do
    week_number { 1 }
    day_menu { 'Wednesday' }
    name { 'Pizza' }
  end
end
