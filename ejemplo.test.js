const app = require("../app.js");
const request = require("supertest")(app);

describe("Test ejemplo", () => {
  describe("Test ejemplo", () => {
    test("Test ejemplo", async () => {
      const response = await request.get("/");
      expect(response.statusCode).toBe(200);
    });
  });
});
