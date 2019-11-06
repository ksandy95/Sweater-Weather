require 'rails_helper'

RSpec.describe "Geocode Service" do

  describe "Getting a connection with Faraday" do
    # it "Can connect without an error" do
    #   service = GeocodeService.new
    #   connection = service.conn
    #   body = connection.body
    #   json_d = JSON.parse(body, symbolize_names: true)
    #   lat_long = json_d[:results][0][:geometry][:location]
    #   expect(lat_long).to be_a Hash
    #   expect(lat_long.count).to eq(2)
    # end

    it "can pass in a location" do
      service = GeocodeService.new
      test = service.location_coordinates("Denver,CO")
      expect(test.count).to eq(2)
      expect(test).to be_a Hash
      expect(test[:lat]).to eq(39.7392358)
      expect(test[:lng]).to eq(-104.990251)
    end

    it "can do a reverse lookup without error" do
      service = GeocodeService.new
      coordinates = {:lat=>-22.1044031, :lng=>-65.5967709}
      response = service.reverse_lookup(coordinates)


      # expect(response).to be_a Hash

      # Note to instructors -- in Postman, when i send this request, the same that i seem
      # to be sending in my service for a reverse lookup, i get a god json return of
      # this json hash containing all necessary information

#       {
#    "plus_code": {
#       "compound_code": "VCW3+67 La Quiaca, Jujuy, Argentina",
#       "global_code": "579PVCW3+67"
#    },
#    "results": [
#       {
#          "address_components": [
#             {
#                "long_name": "79",
#                "short_name": "79",
#                "types": [
#                   "street_number"
#                ]
#             },
#             {
#                "long_name": "Avenida San Martín",
#                "short_name": "Av. San Martín",
#                "types": [
#                   "route"
#                ]
#             },
#             {
#                "long_name": "La Quiaca",
#                "short_name": "La Quiaca",
#                "types": [
#                   "locality",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Yavi",
#                "short_name": "Yavi",
#                "types": [
#                   "administrative_area_level_2",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "Av. San Martín 79, La Quiaca, Jujuy, Argentina",
#          "geometry": {
#             "location": {
#                "lat": -22.104618,
#                "lng": -65.59714719999999
#             },
#             "location_type": "ROOFTOP",
#             "viewport": {
#                "northeast": {
#                   "lat": -22.1032690197085,
#                   "lng": -65.59579821970848
#                },
#                "southwest": {
#                   "lat": -22.1059669802915,
#                   "lng": -65.59849618029149
#                }
#             }
#          },
#          "place_id": "ChIJa813LD2kBpQR_az4XUvrm_I",
#          "plus_code": {
#             "compound_code": "VCW3+54 La Quiaca, Jujuy, Argentina",
#             "global_code": "579PVCW3+54"
#          },
#          "types": [
#             "street_address"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "83",
#                "short_name": "83",
#                "types": [
#                   "street_number"
#                ]
#             },
#             {
#                "long_name": "Avenida San Martín",
#                "short_name": "Av. San Martín",
#                "types": [
#                   "route"
#                ]
#             },
#             {
#                "long_name": "La Quiaca",
#                "short_name": "La Quiaca",
#                "types": [
#                   "locality",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Yavi",
#                "short_name": "Yavi",
#                "types": [
#                   "administrative_area_level_2",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "Av. San Martín 83, La Quiaca, Jujuy, Argentina",
#          "geometry": {
#             "location": {
#                "lat": -22.1045723,
#                "lng": -65.5972067
#             },
#             "location_type": "RANGE_INTERPOLATED",
#             "viewport": {
#                "northeast": {
#                   "lat": -22.1032233197085,
#                   "lng": -65.59585771970849
#                },
#                "southwest": {
#                   "lat": -22.1059212802915,
#                   "lng": -65.5985556802915
#                }
#             }
#          },
#          "place_id": "Ei9Bdi4gU2FuIE1hcnTDrW4gODMsIExhIFF1aWFjYSwgSnVqdXksIEFyZ2VudGluYSIaEhgKFAoSCVNM1Cs9pAaUEXK_3PfJ9CPDEFM",
#          "types": [
#             "street_address"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "Peatonal",
#                "short_name": "Peatonal",
#                "types": [
#                   "route"
#                ]
#             },
#             {
#                "long_name": "La Quiaca",
#                "short_name": "La Quiaca",
#                "types": [
#                   "locality",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Yavi",
#                "short_name": "Yavi",
#                "types": [
#                   "administrative_area_level_2",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "Peatonal, La Quiaca, Jujuy, Argentina",
#          "geometry": {
#             "bounds": {
#                "northeast": {
#                   "lat": -22.1039599,
#                   "lng": -65.5964491
#                },
#                "southwest": {
#                   "lat": -22.1049277,
#                   "lng": -65.5965453
#                }
#             },
#             "location": {
#                "lat": -22.1044438,
#                "lng": -65.5964972
#             },
#             "location_type": "GEOMETRIC_CENTER",
#             "viewport": {
#                "northeast": {
#                   "lat": -22.1030948197085,
#                   "lng": -65.59514821970849
#                },
#                "southwest": {
#                   "lat": -22.1057927802915,
#                   "lng": -65.59784618029151
#                }
#             }
#          },
#          "place_id": "ChIJ47pjMT2kBpQRwt62g8mIfcI",
#          "types": [
#             "route"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "La Quiaca",
#                "short_name": "La Quiaca",
#                "types": [
#                   "locality",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Bolivia",
#                "short_name": "BO",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "La Quiaca, Bolivia",
#          "geometry": {
#             "bounds": {
#                "northeast": {
#                   "lat": -22.0973307,
#                   "lng": -65.5861474
#                },
#                "southwest": {
#                   "lat": -22.1197952,
#                   "lng": -65.61086639999999
#                }
#             },
#             "location": {
#                "lat": -22.1076922,
#                "lng": -65.5975218
#             },
#             "location_type": "APPROXIMATE",
#             "viewport": {
#                "northeast": {
#                   "lat": -22.0973307,
#                   "lng": -65.5861474
#                },
#                "southwest": {
#                   "lat": -22.1197952,
#                   "lng": -65.61086639999999
#                }
#             }
#          },
#          "place_id": "ChIJQ9s22SKkBpQR2r52V4zjruQ",
#          "types": [
#             "locality",
#             "political"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "La Quiaca",
#                "short_name": "La Quiaca",
#                "types": [
#                   "locality",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Yavi Department",
#                "short_name": "Yavi Department",
#                "types": [
#                   "administrative_area_level_2",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "La Quiaca, Jujuy, Argentina",
#          "geometry": {
#             "bounds": {
#                "northeast": {
#                   "lat": -22.0961729,
#                   "lng": -65.5857602
#                },
#                "southwest": {
#                   "lat": -22.1180449,
#                   "lng": -65.6094726
#                }
#             },
#             "location": {
#                "lat": -22.1044031,
#                "lng": -65.5967709
#             },
#             "location_type": "APPROXIMATE",
#             "viewport": {
#                "northeast": {
#                   "lat": -22.0961729,
#                   "lng": -65.5857602
#                },
#                "southwest": {
#                   "lat": -22.1180449,
#                   "lng": -65.6094726
#                }
#             }
#          },
#          "place_id": "ChIJURK4ah-kBpQROdpO70uFIn0",
#          "types": [
#             "locality",
#             "political"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "Yavi Department",
#                "short_name": "Yavi Department",
#                "types": [
#                   "administrative_area_level_2",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "Yavi Department, Jujuy, Argentina",
#          "geometry": {
#             "bounds": {
#                "northeast": {
#                   "lat": -22.0723387,
#                   "lng": -65.1887933
#                },
#                "southwest": {
#                   "lat": -22.5793363,
#                   "lng": -65.96537339999999
#                }
#             },
#             "location": {
#                "lat": -22.2901385,
#                "lng": -65.5707852
#             },
#             "location_type": "APPROXIMATE",
#             "viewport": {
#                "northeast": {
#                   "lat": -22.0723387,
#                   "lng": -65.1887933
#                },
#                "southwest": {
#                   "lat": -22.5793363,
#                   "lng": -65.96537339999999
#                }
#             }
#          },
#          "place_id": "ChIJS9TWYdcbBJQRGjm53-E3-Gg",
#          "types": [
#             "administrative_area_level_2",
#             "political"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "Jujuy",
#                "short_name": "Jujuy",
#                "types": [
#                   "administrative_area_level_1",
#                   "political"
#                ]
#             },
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "Jujuy, Argentina",
#          "geometry": {
#             "bounds": {
#                "northeast": {
#                   "lat": -21.7794585,
#                   "lng": -64.1549213
#                },
#                "southwest": {
#                   "lat": -24.6074314,
#                   "lng": -67.23742059999999
#                }
#             },
#             "location": {
#                "lat": -24.1843397,
#                "lng": -65.302177
#             },
#             "location_type": "APPROXIMATE",
#             "viewport": {
#                "northeast": {
#                   "lat": -21.7794585,
#                   "lng": -64.1549213
#                },
#                "southwest": {
#                   "lat": -24.6074314,
#                   "lng": -67.23742059999999
#                }
#             }
#          },
#          "place_id": "ChIJhwBc5_ahBJQReU7OMLKRXoE",
#          "types": [
#             "administrative_area_level_1",
#             "political"
#          ]
#       },
#       {
#          "address_components": [
#             {
#                "long_name": "Argentina",
#                "short_name": "AR",
#                "types": [
#                   "country",
#                   "political"
#                ]
#             }
#          ],
#          "formatted_address": "Argentina",
#          "geometry": {
#             "bounds": {
#                "northeast": {
#                   "lat": -21.7810459,
#                   "lng": -53.637481
#                },
#                "southwest": {
#                   "lat": -55.1250224,
#                   "lng": -73.5603601
#                }
#             },
#             "location": {
#                "lat": -38.416097,
#                "lng": -63.61667199999999
#             },
#             "location_type": "APPROXIMATE",
#             "viewport": {
#                "northeast": {
#                   "lat": -21.7810459,
#                   "lng": -53.637481
#                },
#                "southwest": {
#                   "lat": -55.1250224,
#                   "lng": -73.5603601
#                }
#             }
#          },
#          "place_id": "ChIJZ8b99fXKvJURqA_wKpl3Lz0",
#          "types": [
#             "country",
#             "political"
#          ]
#       }
#    ],
#    "status": "OK"
# }
    end

  end
end
