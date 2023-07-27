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
  .connect("mongodb+srv://aakash:aakas_301@cluster0.fzs30ay.mongodb.net/?retryWrites=true&w=majority")
  .then(() => {
    console.log("Db Connection succesfull");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
