import { drizzle } from "drizzle-orm/node-postgres";
import pg from "pg";
import "dotenv/config";
import * as schema from "./schema.js";

const pool = new pg.Pool({
  connectionString: process.env.DATABASE_URL,
  connectionTimeoutMillis: 5000,
});

pool.on("error", (err) => {
  console.error("Unexpected error on idle SQL client", err);
});

export const db = drizzle(pool, { schema });
