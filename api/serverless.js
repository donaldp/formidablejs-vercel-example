const { Application } = require('./server/server.app');

const server = async (req, res) => {
	const app = await Application

	await app.fastify().ready()

	app.fastify().server.emit('request', req, res)
}

exports = server
