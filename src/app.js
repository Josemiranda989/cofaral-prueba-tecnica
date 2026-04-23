import express from "express";
import helmet from "helmet";
import cors from "cors";
import rateLimit from "express-rate-limit";
import morgan from "morgan";

import config from "./config";
import productsRoutes from "./routes/products.routes";

const app = express();

app.disable("x-powered-by");
app.set("port", config.port);

app.use(helmet());
app.use(cors({ origin: config.corsOrigin }));
app.use(
  rateLimit({
    windowMs: 60_000,
    max: 100,
    standardHeaders: true,
    legacyHeaders: false,
  })
);
app.use(morgan(process.env.NODE_ENV === "production" ? "combined" : "dev"));
app.use(express.json({ limit: "10kb" }));
app.use(express.urlencoded({ extended: false, limit: "10kb" }));

app.use(productsRoutes);

export default app;
