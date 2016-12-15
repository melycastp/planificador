date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'

json.id event.id
json.title event.descripcion
json.start event.fechainicial.strftime(date_format)
json.end event.fechafinal.strftime(date_format)

json.color event.color unless event.color.blank?
json.allDay event.all_day_event? ? true : false