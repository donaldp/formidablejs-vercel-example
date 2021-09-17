import { helpers, Route } from '@formidablejs/framework'

Route.get('/', do(request) request.translate 'index.hello', 'Hello World').name('hello').middleware(['lang'])

Route.get '/app', do
	helpers.config('app')

Route.get '/database', do
	helpers.config('database')
