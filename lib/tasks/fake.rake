task :fake => :environment do
	10.times do

		Customer.create(name: Faker::Company.name,
						email: Faker::Internet.email,
						about: Faker::Lorem.paragraph)
	end
end