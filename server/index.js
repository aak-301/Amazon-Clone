const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");

// init
const app = express();
const PORT = 3000;
const DB =
  "mongodb+srv://aakash:aakas_301@cluster0.fzs30ay.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json());
app.use(authRouter);

//connection
//  username: aakash
// password:aakas_301
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
