const app= require("./pagina");
const request= require("supertest")(app);

test("Test", async () => {
  const res = await request.get("/");
  expect(res.statusCode).toBe(200);
});

