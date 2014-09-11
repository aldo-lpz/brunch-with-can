console.log "init------------------"

require 'templates/basicInfo'

viewModel = new can.Map 
	name : ""
	lastName : ""
	fullName : ->	
		"#{this.attr('name')} #{this.attr('lastName')}"
	clear : ->
		this.attr 'name', ''
		this.attr 'lastName', ''


$('.outlet').html can.view 'templates/basicInfo.mustache', viewModel