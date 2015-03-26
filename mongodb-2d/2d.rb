require 'mongo'
require 'pp'

# http://gihyo.jp/dev/serial/01/mongodb/0009

connection = Mongo::Connection.new
collection = connection.db('2d').collection('yamanotesen')

collection.drop()
collection.create_index({loc: "2dsphere"})

collection.insert({ name: "五反田",  loc: {type: "Point", coordinates: [ 139.723822, 35.625974 ]}})
collection.insert({ name: "恵比寿",  loc: {type: "Point", coordinates: [ 139.710070, 35.646685 ]}})
collection.insert({ name: "新宿",    loc: {type: "Point", coordinates: [ 139.700464, 35.689729 ]}})
collection.insert({ name: "新大久保",loc: {type: "Point", coordinates: [ 139.700261, 35.700875 ]}})
collection.insert({ name: "池袋",    loc: {type: "Point", coordinates: [ 139.711086, 35.730256 ]}})
collection.insert({ name: "上野",    loc: {type: "Point", coordinates: [ 139.777043, 35.713790 ]}})
collection.insert({ name: "品川",    loc: {type: "Point", coordinates: [ 139.738999, 35.628760 ]}})

collection.find( {"loc" => 
  { "$nearSphere" => 
    { "$geometry" => 
      { type: "Point", coordinates: [139.701238, 35.658871]}
    }
  }
}).each do |doc|
  puts doc["name"]
end

puts "in 2km ---------------------"
collection.find( {"loc" => 
  { "$nearSphere" => 
    { "$geometry" => 
      { type: "Point", coordinates: [139.701238, 35.658871]},
      "$maxDistance" =>  2000
    }
  }
}).each do |doc|
  p doc
  puts doc["name"]
end


puts "use geoNear db.runCommand ----------------"
result = connection.db('2d').command(
  { geoNear: 'yamanotesen',
    near: { type: "Point", coordinates: [139.701238, 35.658871]},
    spherical: true,
    maxDistance: 2000
  }
)
result.each do |d|
  pp d
end


puts "in 5km ---------------------"
collection.find( {"loc" => 
  { "$nearSphere" => 
    { "$geometry" => 
      { type: "Point", coordinates: [139.701238, 35.658871]},
      "$maxDistance" =>  5000
    }
  }
}).each do |doc|
  p doc
  puts doc["name"]
end


puts "use geoNear db.runCommand ----------------"
result = connection.db('2d').command(
  { geoNear: 'yamanotesen',
    near: { type: "Point", coordinates: [139.701238, 35.658871]},
    spherical: true,
    maxDistance: 5000
  }
)
result.each do |d|
  pp d
end

collection.drop()
