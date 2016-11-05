class Search < ApplicationRecord

  def search_train(start_station_id, end_station_id)

    @result = Train.includes(route: :railway_stations).where(railway_stations: { id: start_station_id }) & Train.includes(route: :railway_stations).where(railway_stations: { id: end_station_id })

  end

end


# Далее тебе у пользователя надо запросить начальную и конечную станции, 
# в контроллер отправить их id. После этого найти все маршруты куда входит 
# начальная станция и все маршруты, куда входит конечная. 
# И после этого найти их пересечение. Пересечение двух множеств ищется 
# оператором &
# Так мы найдем все маршруты, куда входит начальная и конечная станции.
# Ну и не забудь, что вывести надо не маршруты, а поезда на них.