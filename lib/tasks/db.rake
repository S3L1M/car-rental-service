namespace :db do
  desc 'Import data and images'
  task data_import: :environment do

    car1 = Car.new(
      make: 'Toyota',
      model: 'Camry',
      kilometers_traveled: rand(1000..50000),
      latitude: 21.509359, # at East Jeddah General Hospital
      longitude: 39.241745,
      available_from: Time.now,
      available_until: Time.now + 1.week
    )
    car1.images.attach(io: File.open('images/toyota/toyota-camry-1.jpg'), filename: 'toyota-camry-1.jpg', content_type: 'image/jpeg')
    car1.images.attach(io: File.open('images/toyota/toyota-camry-2.jpg'), filename: 'toyota-camry-2.jpg', content_type: 'image/jpeg')
    car1.images.attach(io: File.open('images/toyota/toyota-camry-3.jpg'), filename: 'toyota-camry-3.jpg', content_type: 'image/jpeg')
    car1.save

    car2 = Car.new(
      make: 'BMW',
      model: 'X1',
      kilometers_traveled: rand(1000..50000),
      latitude: 21.634160, # at Mall Arab
      longitude: 39.157422,
      available_from: Time.now,
      available_until: Time.now + rand(1..7).week
    )
    car2.images.attach(io: File.open('images/bmw/bmw-x5-1.jpg'), filename: 'bmw-x5-1.jpg', content_type: 'image/jpeg')
    car2.images.attach(io: File.open('images/bmw/bmw-x5-2.jpg'), filename: 'bmw-x5-2.jpg', content_type: 'image/jpeg')
    car2.images.attach(io: File.open('images/bmw/bmw-x5-3.jpg'), filename: 'bmw-x5-3.jpg', content_type: 'image/jpeg')
    car2.save

    car3 = Car.new(
      make: 'KIA',
      model: 'Sportage',
      kilometers_traveled: rand(1000..50000),
      latitude: 21.451977, # at South Mall
      longitude: 39.208412,
      available_from: Time.now + 5.week,
      available_until: Time.now + 8.week
    )
    car3.images.attach(io: File.open('images/kia/kia-sportage-1.jpg'), filename: 'kia-sportage-1.jpg', content_type: 'image/jpeg')
    car3.images.attach(io: File.open('images/kia/kia-sportage-2.jpg'), filename: 'kia-sportage-2.jpg', content_type: 'image/jpeg')
    car3.images.attach(io: File.open('images/kia/kia-sportage-3.jpg'), filename: 'kia-sportage-3.jpg', content_type: 'image/jpeg')
    car3.save

    car4 = Car.new(
      make: 'Chevrolet',
      model: 'Cruze',
      kilometers_traveled: rand(1000..50000),
      latitude: 21.427950, # at Makka
      longitude: 39.822574,
      available_from: Time.now,
      available_until: Time.now + rand(1..7).week
    )
    car4.images.attach(io: File.open('images/chevrolet/chevrolet-cruze-1.jpg'), filename: 'chevrolet-cruze-1.jpg', content_type: 'image/jpeg')
    car4.images.attach(io: File.open('images/chevrolet/chevrolet-cruze-2.jpg'), filename: 'chevrolet-cruze-2.jpg', content_type: 'image/jpeg')
    car4.images.attach(io: File.open('images/chevrolet/chevrolet-cruze-3.jpg'), filename: 'chevrolet-cruze-3.jpg', content_type: 'image/jpeg')
    car4.save
  end
end
  