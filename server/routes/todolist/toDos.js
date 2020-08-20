// const express = require("express");
const { Router } = require("express");
const {uuid }= require("uuidv4");

let todo = [
    {
        id:uuid(),
        title:"first",
        description:"this is the first title description"
    }
];

const router = Router();

module.exports= router;