import request from "supertest";

import app from "../src/app";

/* Todos los productos */
describe("GET /productos", () => {
  //Debe responder codigo estado 200
  test("Debe devolver el codigo status 200", async () => {
    const response = await request(app).get("/").send();
    expect(response.statusCode).toBe(200);
  });
  //Debe devolver un JSON
  test("Debe devolver un objeto", async () => {
    const response = await request(app).get("/").send({});
    expect(response.body).toBeInstanceOf(Object);
  });
});

/* Crear producto */
describe("POST /productos", () => {
  describe("Con los campos completos del body", () => {
    const newProduct = {
      sapcode: 999,
      name: "Producto Nuevo",
      presentation: "GARDEN HOUSE GARCINOL MAX COM X301",
      laboratorio: "GARDEN HOUSE1",
      droga: "GARCINIA CAMBOGIA+ASOC.2",
      salta: 3,
      chaco: 4,
      precio: 323.87,
    };
     test("Debe devolver el codigo status 200", async () => {
    const response = await request(app).post("/").send(newProduct);
    expect(response.statusCode).toBe(200);
  });
    test("Debe devolver un content-type: application/json en el header", async () => {
      const response = await request(app).post("/").send(newProduct);
      expect(response.headers["content-type"]).toEqual(
        expect.stringContaining("json")
      );
    });
    test("Debe devolver el sapcode del producto", async () => {
      const response = await request(app).post("/").send(newProduct);
      expect(response.body.data).toBeDefined();
    });
  });
  describe("Con los campos vacíos del body", () => {
    test('Debe responde con el codigo de estado 400', async () => {
      const response = await request(app).post('/').send({})
      expect(response.statusCode).toBe(400);
    })
  })
});

/* Producto Específico */
describe("GET /productos/:id", () => {
  //Debe responder codigo estado 200
  test("Debe devolver el codigo status 200", async () => {
    const response = await request(app).get("/999").send();
    expect(response.statusCode).toBe(200);
  });
  //Debe devolver un JSON
  test("Debe devolver un objeto", async () => {
    const response = await request(app).get("/999").send();
    expect(response.body).toBeInstanceOf(Object);
  });
});

/* Actualizar producto */
describe("PUT /productos", () => {
  describe("Con los campos completos del body", () => {
    const updateProduct = {
      name: "Producto Nuevo",
      presentation: "GARDEN HOUSE GARCINOL MAX COM X301",
      laboratorio: "GARDEN HOUSE1",
      droga: "GARCINIA CAMBOGIA+ASOC.2",
      salta: 3,
      chaco: 4,
      precio: 323.87,
    };
     test("Debe devolver el codigo status 200", async () => {
    const response = await request(app)
      .put("/73060")
      .send(updateProduct);
    expect(response.statusCode).toBe(200);
  });
    test("Debe devolver un content-type: application/json en el header", async () => {
      const response = await request(app)
        .put("/73060")
        .send(updateProduct);
      expect(response.headers["content-type"]).toEqual(
        expect.stringContaining("json")
      );
    });
    test("Debe devolver el producto actualizado", async () => {
      const response = await request(app)
        .put("/73060")
        .send(updateProduct);
      expect(response.body.data).toBeDefined();
    });
  });
  describe("Con los campos vacíos del body", () => {
    test('Debe responde con el codigo de estado 400', async () => {
      const response = await request(app).put("/73060").send({});
      expect(response.statusCode).toBe(400);
    })
  })
});

/* Productos por laboratorio */
describe("GET /productos/total", () => {
  //Debe responder codigo estado 200
  test("Debe devolver el codigo status 200", async () => {
    const response = await request(app).get("/total").send();
    expect(response.statusCode).toBe(200);
  });
  //Debe devolver un JSON
  test("Debe devolver un objeto", async () => {
    const response = await request(app).get("/total").send({});
    expect(response.body).toBeInstanceOf(Object);
  });
});

/* Total de Productos */
describe("GET /productos/productos-por-laboratorio", () => {
  //Debe responder codigo estado 200
  test("Debe devolver el codigo status 200", async () => {
    const response = await request(app)
      .get("/productos-por-laboratorio")
      .send();
    expect(response.statusCode).toBe(200);
  });
  //Debe devolver un JSON
  test("Debe devolver un objeto", async () => {
    const response = await request(app)
      .get("/productos-por-laboratorio")
      .send({});
    expect(response.body).toBeInstanceOf(Object);
  });
});