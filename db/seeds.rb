user = User.new(name: 'Chad Miller', email: 'chadtmiller15@gmail.com', password_digest: "$2a$10$wJTPdvpGgzDvkXChrcPyqOQrFFawzGu89B1rZze/lVIcJKWiNeAqS")

Building.create({
  name: 'Empire State Building',
  address: '350 5th Ave',
  city: 'New York',
  state: 'NY',
  zipcode: 10118,
  area: 87120,
  space_type: 'Office',
  users: [user]
}).tap do |building|

  user.buildings = [building]
  user.save!

  building.attachments.create(name: 'Owners Manual.pdf', size: 2000, url: '/owners_manual.pdf')

  building.equipments.create(name: 'AHU-1', location: 'rooftop', manufacturer: 'Trane', size: '100 tons', quantity: 1, model_number: 'jkbfdigy876623', serial_number: '2918630912864')

  building.spaces.create(name: 'Office-1', area: 10280)

end

