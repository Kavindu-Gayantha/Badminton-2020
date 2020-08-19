const { Router } = require("express");
const router = Router();

//delete with parameter
router.delete("/delete/:deleteId",(req,res)=>{
    const parameter = req.params.deleteId;
    return res.json(parameter);
})