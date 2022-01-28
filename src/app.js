import express from 'express';
import config from './config'
import morgan from 'morgan'

import productsRoutes from './routes/products.routes'

const app = express();

//Settings
app.set('port', config.port);

//Middlewares
app.use(morgan("dev"));
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

app.use(productsRoutes)

export default app