headers["content-security-policy"] = [
  {
    key: "Content-Security-Policy",
    value: "",
  },
];

let arr = [
  "base-uri 'self';",
  "default-src 'self';",
  "script-src 'self';",
  "style-src 'self';",
  "object-src 'none';",
  "form-action 'self';",
  "font-src 'self' data:;",
  "connect-src 'self';",
  "img-src 'self' https://images.ctfassets.net/ data:;",
];

console.log(arr.join(""));
