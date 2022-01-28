import app from "./app"


app.listen(app.get('port'))

console.log(
  "server running on port",
  app.get("port"),
  "database",
  process.env.DB_DATABASE
);
console.log('-');
console.log(`click here http://localhost:${app.get('port')}`);
