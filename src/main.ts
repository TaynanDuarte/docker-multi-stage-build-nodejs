import express, { Request, Response } from "express";

const app = express();

app.use(express.json())

app.get("/user", (req: Request, res: Response) => {
    res.status(200).send({
        id: "123-abcd",
        email: "user@gmail.com"
    })
})

app.listen(3000, () => console.log("Server running on port 3000"));
