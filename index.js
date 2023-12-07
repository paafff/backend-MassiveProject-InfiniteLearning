const dotenv = require('dotenv');
dotenv.config();

const express = require('express');

const cors = require('cors');
const session = require('express-session');
const dbConfig = require('./config/Database.js');

// komen
const SequelizeStore = require('connect-session-sequelize');
const authRouter = require('./routes/AuthRoute.js');
const userRouter = require('./routes/UserRoute.js');
const businessRouter = require('./routes/BusinessRoute.js');
const serviceRouter = require('./routes/ServiceRoute.js');
const workerRouter = require('./routes/WorkerRoute.js');
const feedbackRouter = require('./routes/FeedbackRoute.js');
const hairRouter = require('./routes/HairRoute.js');
const reservationRouter = require('./routes/ReservationRoute.js');
const listServiceRouter = require('./routes/ListServiceRoute.js');
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
    origin: ['http://localhost:3000', 'http://127.0.0.1:3000'],
  })
);

//static file untuk image
app.use(express.static('assets'));

app.use(express.json());
//route
app.use(authRouter);
app.use(userRouter);
app.use(businessRouter);
app.use(serviceRouter);
app.use(workerRouter);
app.use(feedbackRouter);
app.use(hairRouter);
app.use(reservationRouter);
app.use(listServiceRouter);

app.listen(process.env.APP_PORT, () => {
  console.log(`server sudah jalan tuan... ${process.env.APP_PORT}`);
});
