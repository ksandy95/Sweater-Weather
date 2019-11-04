class Api::V1::AntipodeController < ApplicationController

  # should render data necessary for a show page for a locations antipodes forecast data
  def show
    # location = params[:location]
    # facade = AntipodeFacade.new(params[:location])
    # forecast = facade.get_antipode_forecast(location)

    # there are no params[:id] to get from this request, i will
    # need to create the Antipode object first to then pass in the id
    antipode_forecast = AntipodeFacade.new(params[:location]).get_antipode_forecast(params[:location])
    binding.pry
    render json: AntipodeSerializer.new(Antipode.find(antipode_forecast))
  end

end

# Example for how data should be formatted to the show page. currently, do not
# have, will need to pass in more information from the antipode api response to
# build this properly in the serializer

# {
#     "data": [
#         {
#             "id": "1",
#             "type": "antipode",
#             "attributes": {
#                 "location_name": "Antipode City Name",
#                 "forecast": {
#                     "summary": "Mostly Cloudy,
#                     "current_temperature": "72",
#                                 },
#             "search_location": "Hong Kong"
#             }
#         }
#     ]
# }
