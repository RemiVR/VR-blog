require 'faker'

FactoryGirl.define do
	factory :project do |f|
		f.title { Faker::Internet.domain_name }
		f.link { Faker::Internet.url }
		f.description { Faker::Lorem.paragraph }
	end
end