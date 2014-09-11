exports.config =
	files:
		javascripts:
			joinTo:
				'app.js': /^(vendor|bower_components|app\/src)/

			order:
				before: [
					'bower_components/jquery/dist/jquery.js',
					'bower_components/lodash/dist/lodash.js'
				]

		stylesheets:
			joinTo:
				'style.css': /^(bower_components|app\/styles)/
			order:
				before : [
					'bower_components/bootstrap/dist/css/bootstrap.css',
					'bower_components/bootstrap/dist/css/bootstrap-theme.css'
				]

				after : ['app/styles/app.styl']

		templates:
			joinTo: 
				'app.js' : /^app\/templates/

	plugins:
		autoReload:
			enabled:
				js: on
				css: on
				assets: on