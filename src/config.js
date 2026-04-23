import { config } from "dotenv";
config();

const required = ["DB_USER", "DB_PASSWORD", "DB_SERVER", "DB_DATABASE"];
const missing = required.filter((key) => !process.env[key]);
if (missing.length && process.env.NODE_ENV !== "test") {
  console.warn(
    `Missing required env vars: ${missing.join(", ")}. Database calls will fail.`
  );
}

export default {
  port: process.env.PORT || 3000,
  dbUser: process.env.DB_USER || "",
  dbPassword: process.env.DB_PASSWORD || "",
  dbServer: process.env.DB_SERVER || "",
  dbDatabase: process.env.DB_DATABASE || "",
  corsOrigin: process.env.CORS_ORIGIN || "*",
};
