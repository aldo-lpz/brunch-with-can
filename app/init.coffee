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
		name : ''

	can.Component.extend
		tag      : "hello-world"
		template : can.view "templates/hello.mustache"
		scope    : componentScope


	$('.outlet').html can.view 'templates/basicInfo.mustache', new viewModel()