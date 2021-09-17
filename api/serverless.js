const { Application } = require('../dist/server.app');
const cache = require('../dist/config.json');

export default async (req, res) => {
	const app = await Application

	await app.fastify().ready()

	app.fastify().server.emit('request', req, res)
}
