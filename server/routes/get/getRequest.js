const {Router} = require("express");
const router = Router();

//get request
router.get("/get",(req,res)=>{
    return res.json("get request");
})