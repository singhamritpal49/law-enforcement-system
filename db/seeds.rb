require 'Faker'
Civilian.destroy_all
eyecolor = ["BLK","BRO","BLU"]

10.times do 
    Civilian.create(
        first_name: Faker::Name.first_name,
        middle_name: Faker::Name.middle_name,
        last_name: Faker::Name.last_name,   
        sex: Faker::Gender.binary_type,
        date_of_birth: Faker::Date.birthday(min_age: 16, max_age: 65),
        height: Faker::Demographic.height,
        eyes: eyecolor.sample,
        address1: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        zip: Faker::Address.zip_code,
        country: Faker::Address.country,
        email: Faker::Internet.email,
        cell: Faker::PhoneNumber.phone_number,
        phone: Faker::PhoneNumber.cell_phone,
        social_security_number: Faker::IDNumber.valid,
        driver_license: Faker::DrivingLicence.british_driving_licence,
        driver_license_issue_state: Faker::Address.state,
        driver_license_issue_date: Faker::Date.backward(days: 200),
        driver_license_expiration_date: Faker::Date.forward(days: 600)
    )
end