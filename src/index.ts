import express from "express";

const application = express();
const port = 3000;

application.get("/", function (req, res) {
    res.send("Hello User.");
});

application.listen(port, function () {
    console.log(`Application listening on port ${port}!`);
});