import { Route, helpers } from '@formidablejs/framework'
import fs from 'fs'
import path from 'path'

Route.get('/', do(request) request.translate 'index.hello', 'Hello World').name('hello').middleware(['lang'])

Route.get 'test', do
	{
		pwd: process.env.PWD,
		cacheJson: fs.existsSync path.join(process.env.PWD, 'bootstrap', 'cache', 'config.json')
		cache: fs.existsSync path.join(process.env.PWD, 'bootstrap', 'cache')
		bootstrap: fs.existsSync path.join(process.env.PWD, 'bootstrap')
		files: fs.readdirSync(process.env.PWD)
	}

Route.get '/name', do
	helpers.config('app.name')

Route.get '/env', do
	helpers.config('app.env')

Route.get '/url', do
	helpers.config('app.url')
