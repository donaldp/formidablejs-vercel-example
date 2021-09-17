const { Application } = require('../dist/server.app');
const distributedCache = require('../dist/config.json');
const bootstrapCache = require('../bootstrap/cache/config.json');

export default async (req, res) => {
	const app = await Application

	await app.fastify().ready()

	app.fastify().server.emit('request', req, res)
}
