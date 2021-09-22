const { Application } = require('../.formidable/server.app');

export default async (req, res) => {
	const app = await Application

	await app.fastify().ready()

	app.fastify().server.emit('request', req, res)
}
