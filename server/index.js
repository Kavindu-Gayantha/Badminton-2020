// const express = require('express');
// const Joi = require('joi'); //used for validation
// const app = express();
// app.use(express.json());
 
// const books = [
// {title: 'Harry Potter', id: 1},
// {title: 'Twilight', id: 2},
// {title: 'Lorien Legacies', id: 3}
// ]
 
// //READ Request Handlers
// app.get('/', (req, res) => {
// res.send('Welcome to Edurekas REST API with Node.js Tutorial!!');
// });
 
// app.get('/api/books', (req,res)=> {
// res.send(books);
// });
 
// app.get('/api/books/:id', (req, res) => {
// const book = books.find(c => c.id === parseInt(req.params.id));
 
// if (!book) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;">Ooops... Cant find what you are looking for!</h2>');
// res.send(book);
// });
 
// //CREATE Request Handler
// app.post('/api/books', (req, res)=> {
 
// const { error } = validateBook(req.body);
// if (error){
// res.status(400).send(error.details[0].message)
// return;
// }
// const book = {
// id: books.length + 1,
// title: req.body.title
// };
// books.push(book);
// res.send(book);
// });
 
// //UPDATE Request Handler
// app.put('/api/books/:id', (req, res) => {
// const book = books.find(c=> c.id === parseInt(req.params.id));
// if (!book) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;">Not Found!! </h2>');
 
// const { error } = validateBook(req.body);
// if (error){
// res.status(400).send(error.details[0].message);
// return;
// }
 
// book.title = req.body.title;
// res.send(book);
// });
 
// //DELETE Request Handler
// app.delete('/api/books/:id', (req, res) => {
 
// const book = books.find( c=> c.id === parseInt(req.params.id));
// if(!book) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;"> Not Found!! </h2>');
 
// const index = books.indexOf(book);
// books.splice(index,1);
 
// res.send(book);
// });
 
// function validateBook(book) {
// const schema = {
// title: Joi.string().min(3).required()
// };
// return schema.validate(schema);
 
// }
 
// //PORT ENVIRONMENT VARIABLE
// const port = process.env.PORT || 5000;
// app.listen(port, () => console.log(`Listening on port ${port}..`));

const express = require("express");
const app = express();
app.use(express.json({extended:true}));
//post with router
// const postRequest = require("./routes/post/postWithParams");
// app.use(postRequest);

//post with router & body
const postWithBody = require("./routes/post/postWithBody");
app.use(postWithBody);

//get with params
const getWithPramasRequest = require("./routes/get/getWithParams");
app.use(getWithPramasRequest);

//get request without parameters
const getRequest = require("./routes/get/getRequest");
app.use(getRequest); 

//put request with paramters
const putRequest = require("./routes/put/putWithParams");
app.use(putRequest);

//delete request with paremeters
const deleteRequest = require("./routes/delete/deleteWithParams");
app.use(deleteRequest);

//get with router
// const getRequest = require("./routes/get/getRequest");
// app.use(getRequest);

// //get request
// app.get("/get",(req,res)=>{
//     return res.json("hello get");
// });

// //post request
// app.post("/post",(req,res)=>{
//     return res.json("hello post");
// });

// //delete request
// app.delete("/delete/:playerName",(req,res)=>{
//     const player_name = req.params.playerName;
//     return res.json(`hello delete playername ${player_name}`);
// })

// //put request
// app.put("/put",(req,res)=>{
//     return res.json("hello this is put");
// })






const PORT = process.env.PORT || 5000;
app.listen(PORT,()=>{
    console.log("server is on port" + PORT);
    // or we can use with ` 
    // console.log('server is on port ${PORT}');
    
});