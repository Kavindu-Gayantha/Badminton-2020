const { Router } = require("express");
const router = Router();

router.post("/post",(req,res)=>{
    // console.log(req.body);
    const { username } = req.body;
    return res.json({username});
});

module.exports=router;