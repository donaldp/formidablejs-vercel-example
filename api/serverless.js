const { Application } = require('server.app.js');

const server = async (req, res) => {
	const app = await Application

	await app.fastify().ready()

	app.fastify().server.emit('request', req, res)
}

exports = server
