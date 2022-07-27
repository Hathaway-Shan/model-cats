const { Router } = require('express');
const Cat = require('../models/cartoonCats');

const router = Router();

router
  .get('/:id', async (req, res) => {
    //perams is information in the url
    const id = await Cat.getById(req.params.id);
    res.json(id);
  })
  .get('/', async (req, res) => {
    const cats = await Cat.getAll();
    const idName = cats.map((cat) => ({ id: cat.id, name: cat.name }));
    res.json(idName);
  });

module.exports = router;
