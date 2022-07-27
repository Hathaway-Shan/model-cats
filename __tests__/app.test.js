const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('cats routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/cats should return a list of cats', async () => {
    const res = await request(app).get('/cats');

    expect(res.body.length).toEqual(8);
  });

  it('/cats/:id should return cat detail', async () => {
    const res = await request(app).get('/cats/1');
    const felix = {
      id: '1',
      name: 'Felix',
      year: 1892,
      lives: 3,
    };
    expect(res.body).toEqual(felix);
  });

  afterAll(() => {
    pool.end();
  });
});
