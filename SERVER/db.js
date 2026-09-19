import env from "dotenv";
import pg from 'pg';
const { Pool } = pg;
env.config();

const db = new Pool({
	connectionString: process.env.DATABASE_URL,
	ssl: {
		require: true,
	}
	// host: 'localhost',
	// user: 'u228689109_dikshantkamble',
	// database: 'u228689109_SafeZen',
	// password: 'Dikshant@2312',
});

db.on('connect', (client) => {
  client.query('SET search_path TO safezen, public');
});

// console.log(db);

export default db;
