curl -X POST http://localhost:3000/user \
  -H "Content-Type: application/json" \
  -d '{"name": "Alice", "email": "alice@prisma.io"}'


curl -X POST http://localhost:3000/post \
  -H "Content-Type: application/json" \
  -d '{"title": "Hello World", "authorEmail": "alice@prisma.io"}'

curl -X PUT http://localhost:3000/publish/1

curl http://localhost:3000/feed

curl http://localhost:3000/filtered-posts/Hello

