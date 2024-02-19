const app = require("./app");
const dotenv = require("dotenv");

dotenv.config();
const PORT = process.env.PORT || 4000;

app.listen(PORT, ()=>{
    console.log(`Server is running at http://localhost:${PORT}`);
});