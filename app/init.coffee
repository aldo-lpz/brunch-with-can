require 'templates/basicInfo'
require 'templates/hello'

$(document).ready ->

	viewModel = can.Map.extend
		name : ""
		lastName : ""
		fullName : ->	
			"#{this.attr('name')} #{this.attr('lastName')}"
		clear : ->
			this.attr 'name', ''
			this.attr 'lastName', ''

	componentScope = can.Map.extend
		message : ''

	can.Component.extend
		tag      : "hello-world"
		template : can.view "templates/hello.mustache"
		scope    : componentScope
		events   : 
			click : (element, ev) ->
				element.parent().css "background", "#FFBC42"
				element.find(".changeMe").empty()
				this.scope.attr 'message', 'hola :)'


	$('.outlet').html can.view 'templates/basicInfo.mustache', new viewModel()