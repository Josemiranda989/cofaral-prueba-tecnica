import sql from "mssql";

const dbSettings = {
  user: "jose",
  password: "jose1234",
  server: "localhost",
  database: "Cofaral",
  options: {
    encrypt: true,
    trustServerCertificate: true
  }
};

export async function getConnection() {
  try {
    const pool = await sql.connect(dbSettings)
    return pool
  } catch (err) {
    console.error(error);
  }
}

export { sql }