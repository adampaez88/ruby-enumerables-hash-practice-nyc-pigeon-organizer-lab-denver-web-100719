# def nyc_pigeon_organizer(data)
#   # write your code here!
#   new_hash = {
#     "Theo" => {color: ["purple", "grey"],
#       gender: ["male"],
#       lives: ["Subway"]
#     },
#     "Peter Jr." => {color: ["purple", "grey"],
#       gender: ["male"],
#       lives: ["Library"]
#      },
#     "Lucky" => {color: ["purple"],
#       gender: ["male"],
#       lives: ["Central Park"]
#     },
#     "Ms. K" => {color: ["grey", "white"],
#       gender: ["female"],
#       lives: ["Central Park"]
#     },
#     "Queenie" => {color: ["white", "brown"],
#       gender: ["female"],
#       lives: ["Subway"]
#     },
#     "Andrew" => {color: ["white"],
#       gender: ["male"],
#       lives: ["City Hall"]
#     },
#     "Alex" => {color: ["white", "brown"],
#       gender: ["male"],
#       lives: ["Central Park"]
#     }
#   }


def nyc_pigeon_organizer (data)
  final = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = final.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end
      end
    end
  end

  return final
end

nyc_pigeon_organizer(pigeon_data)

#end



# {
#   "Luca" => {color: ["brown"],
#     gender: ["male"],
#     lives: ["Library"]
#   },
#   "Lola" => {color: ["black"],
#     gender: ["female"],
#     lives: ["Central Park"]
#   }
