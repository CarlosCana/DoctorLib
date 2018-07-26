require 'faker'

#Creates 10 fake doctors
10.times do
	doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Appliance.brand, postal_code: Faker::Address.zip)
end

#Creates 10 fake patients 	
10.times do
	patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Creates 10 fake apointments
10.times do
	appointment = Appointment.create(date: Faker::Date.between(2.days.ago, Date.today), doctor_id: rand(1..10), patient_id: rand(1..10))
end
