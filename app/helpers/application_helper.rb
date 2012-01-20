# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
   def collection_select_with_current(object, method, collection, value_method, text_method, current_value, html_options={})
	result = "<select name='#{object}[#{method}]'"
	html_options.each do |key, value|
		result << ' ' + key.to_s + '="' + value.to_s + '"'
	end
	result << ">\n"
	for element in collection
		if current_value == element.send(value_method)
			result << "<option value='#{element.send(value_method)}' selected='selected'>#{element.send(text_method)}</option>\n"
		else
			result << "<option value='#{element.send(value_method)}'>#{element.send(text_method)}</option>\n"
		end
	end
	result << "</select>\n"
	return result
  end
end
