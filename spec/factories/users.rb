# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    active { Faker::Boolean.boolean }
    county { Faker::Movies::HarryPotter.location }
    date_of_birth { Faker::Date.birthday(min_age: 21) }
    email { Faker::Internet.email }
    full_name { Faker::Games::WorldOfWarcraft.hero }
    greeting_name { Faker::Name.first_name }
    language { %w[English Spanish Russian].sample }
    okay_to_email { Faker::Boolean.boolean }
    okay_to_phone { Faker::Boolean.boolean }
    okay_to_text { Faker::Boolean.boolean }
    opt_in_email { Faker::Boolean.boolean }
    opt_in_phone { Faker::Boolean.boolean }
    opt_in_text { Faker::Boolean.boolean }
    phone { Faker::PhoneNumber.phone_number }
    service_agreement_accepted { Faker::Boolean.boolean }
    timezone { TimeZoneService.us_zones.sample }
    zip { [*11_111..99_999].sample }
  end
end
# == Schema Information
#
# Table name: users
#
#  id                         :uuid             not null, primary key
#  active                     :boolean          default(TRUE)
#  county                     :string
#  date_of_birth              :date
#  email                      :string
#  full_name                  :string
#  greeting_name              :string
#  language                   :string
#  okay_to_email              :boolean          default(TRUE)
#  okay_to_phone              :boolean          default(TRUE)
#  okay_to_text               :boolean          default(TRUE)
#  opt_in_email               :boolean          default(TRUE)
#  opt_in_phone               :boolean          default(TRUE)
#  opt_in_text                :boolean          default(TRUE)
#  phone                      :string
#  service_agreement_accepted :boolean          default(TRUE)
#  timezone                   :string
#  zip                        :string
#
