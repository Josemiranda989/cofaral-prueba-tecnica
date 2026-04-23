import sql from "mssql";
import config from "../config";

const dbSettings = {
  user: config.dbUser,
  password: config.dbPassword,
  server: config.dbServer,
  database: config.dbDatabase,
  options: {
    encrypt: true,
    trustServerCertificate: process.env.NODE_ENV !== "production",
  },
};

export async function getConnection() {
  try {
    const pool = await sql.connect(dbSettings);
    return pool;
  } catch (err) {
    console.error("Database connection failed:", err);
    throw new Error("Database connection failed");
  }
}

export { sql };
