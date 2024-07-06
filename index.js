const bcrypt = require("bcrypt");

const password = "12345";

bcrypt.genSalt(10, (err, salt) => {
  bcrypt.hash(password, salt, (err, hash) => {
    console.log("Hashed password ", hash);
  });
});
