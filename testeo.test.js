const app= require("./pagina.js");
const request= require("supertest")(app);

test("Test", async () => {
  const res = await request.get("/");
  expect(res.statusCode).toBe(200);
});

