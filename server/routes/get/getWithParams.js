const {Router} = require("express");
const router = Router();

//get request
router.get("/get/:parameter",(req,res)=>{
    const postParams = req.params.parameter;
    return res.json(postParams);
});

module.exports = router;