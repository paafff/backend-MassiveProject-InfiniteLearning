const express = require('express');
const dotenv = require('dotenv');
const cors = require('cors');
const session = require('express-session');
const dbConfig = require('./config/Database.js');

// komen
const SequelizeStore = require('connect-session-sequelize');
const authRouter = require('./routes/AuthRoute.js');
const app = express();
dotenv.config();

(async () => {
  await dbConfig.sync();
})();

const sessionStore = new SequelizeStore(session.Store);

const Store = new sessionStore({
  db: dbConfig,
});

app.use(
  session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: true,
    cookie: {
      secure: 'auto',
      maxAge: 24 * 60 * 60 * 1000,
    },
    store: Store,
  })
);

app.use(
  cors({
    credentials: true,
    origin: 'http://localhost:3000',
  })
);

app.use(express.json());
//route
app.use(authRouter);

app.listen(process.env.APP_PORT, () => {
  console.log(`server sudah jalan tuan... ${process.env.APP_PORT}`);
});
