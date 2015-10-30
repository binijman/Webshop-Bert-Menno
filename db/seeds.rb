# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    groups ={
              "Ons Dorp"    => ["Purple",2],
              "Arnhem"      => ["Babyblue",3],
              "Haarlem"     => ["Light-Purple",3],
              "Utrecht"     => ["Dutch-Orange",3],
              "Groningen"   => ["Heartbleed-Red",3],
              "Den Haag"    => ["Banana-Yellow",3],
              "Rotterdam"   => ["Racing-Green",3],
              "Amsterdam"   => ["Bankrupt-Blue",2],
              "Station"     => [" ",2],
              "Nutsbedrijf" => [" ",2],
              }

            # name  => [group, price, revenue]
  straten = {"Dorpsstraat"      => ["Ons Dorp", 60, 2],
             "Brink"            => ["Ons Dorp", 60, 4],

             "Steenstraat"      => ["Arnhem", 100, 6],
             "Ketelstraat"      => ["Arnhem", 100, 6],
             "Velperplein"      => ["Arnhem", 120, 8],

             "Barteljorisstraat" => ["Haarlem", 140, 10],
             "Zijlweg"          => ["Haarlem", 140, 10],
             "Houtstraat"       => ["Haarlem", 150, 12],

             "Neude"            => ["Utrecht", 180, 14],
             "Biltstraat"       => ["Utrecht", 180, 14],
             "Vreeburg"         => ["Utrecht", 200, 16],

             "A-Kerkhof"        => ["Groningen", 220, 18],
             "Groote Markt"     => ["Groningen", 220, 18],
             "Heerestraat"      => ["Groningen", 240, 20],

             "Spui"             => ["Den Haag", 260, 22],
             "Plein"            => ["Den Haag", 260, 22],
             "Lange-Poten"      => ["Den Haag", 280, 24],

             "Hofplein"         => ["Rotterdam", 300, 26],
             "Blaak"            => ["Rotterdam", 300, 26],
             "Coolsingel"       => ["Rotterdam", 320, 28],

             "Leidsche-Straat"  => ["Amsterdam", 350, 35],
             "Kalverstraat"     => ["Amsterdam", 400, 50],
            }

# - Create Streets in database
      straten.each do |name, info|
          stad = info[0]

          size = groups[stad][1]
          puts size
                               # (name, group  , price  ,revenue,owner , set_size , image )
           Card.create({
           name: name,
           group: info[0],
           price: info[1],
           revenue: info[2],
           set_size: size,
           image: "#{name.downcase}.jpg",
           #color: groups[stad][0]
         })
      end

# - End Method
