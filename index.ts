import { Elysia } from 'elysia'

new Elysia()
    .get('/', 'Hello World')
    .get('/json', {
        hello: 'world'
    })
    .get('/id/:id', ({ params: { id } }) => id)
    .listen(8080)

console.log('Listening on http://localhost:8080');
