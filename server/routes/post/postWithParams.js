const { Router } = require("express");

const router = Router();

//post
router.post("/post",(req,res)=>{
    return res.json("post request");
});

module.exports = router;