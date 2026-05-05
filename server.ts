import handler from "./service.ts";

const port = Number(Deno.env.get("PORT") ?? 8080);
console.log("Listening on", port);

Deno.serve({ port }, handler);
