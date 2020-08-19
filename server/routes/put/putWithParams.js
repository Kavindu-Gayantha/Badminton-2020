const { Router } = require("express");
const router = Router();

//put with params
router.put("/put/:putId",(req,res)=>{
    const parameter = req.params.parameter;
    return res.json(parameter);
})