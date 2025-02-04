/* eslint-disable no-undef */
/* eslint-disable no-unused-vars */
/* eslint-disable @typescript-eslint/no-unused-vars */
/* eslint-disable @typescript-eslint/no-explicit-any */
import express, { Application, NextFunction, Request, Response } from "express";

const app: Application = express();

app.get("/", (req: Request, res: Response, next: NextFunction) => {
  res.send("Hello World");
});
app.listen(5000, () => {
  console.log(`app is listening on port 5000`);
});
