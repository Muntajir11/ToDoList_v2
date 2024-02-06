CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL
);

INSERT INTO items (title) VALUES  ('');

/* QUERIES THAT I USED IN INDEX.JS PAGE ARE BELOW */
const result=await db.query("SELECT * FROM items ORDER BY id ASC");
await db.query("INSERT INTO items (title) VALUES ($1)", [item]);
await db.query("UPDATE items SET title= ($1) WHERE id= $2", [item,id]);
await db.query("DELETE FROM items WHERE id=$1", [id]);