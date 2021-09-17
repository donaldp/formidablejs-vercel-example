import { Route, helpers } from '@formidablejs/framework'

Route.get('/', do(request) request.translate 'index.hello', 'Hello World').name('hello').middleware(['lang'])

Route.get '/name', do
	helpers.config('app.name')

Route.get '/env', do
	helpers.config('app.env')

Route.get '/url', do
	helpers.config('app.url')
