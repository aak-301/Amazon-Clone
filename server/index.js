const express = require("express");
const mongoose = require("mongoose");
const dotenv = require('dotenv').config();

const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/products");
const userRouter = require("./routes/user");

// init
const app = express();
const PORT = 3000;
const DB = process.env.MONGO_URL;

//middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(productRouter);
app.use(authRouter);
app.use(adminRouter);
app.use(userRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log("Db Connection succesfull");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Listening on port ${PORT}`);
});
