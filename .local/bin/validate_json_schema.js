#!/usr/bin/env node

// Validate JSON document against JSON schema.
//
// Run "npm install ajv ajv-formats" to install the dependencies.
//
// Usage: validate_json_schema.js schema document

"use strict";

const fs = require("fs");
const Ajv = require("ajv");
const ajv = new Ajv();
const addFormats = require("ajv-formats");

addFormats(ajv);

if (process.argv.length !== 4) {
    console.log("Usage: validate_json_schema.js schema document");
    process.exit(2);
}

const schema_file = process.argv[2];
const schema = JSON.parse(fs.readFileSync(schema_file, "utf-8"));
const validator = ajv.compile(schema);

const document_file = process.argv[3];
const document = JSON.parse(fs.readFileSync(document_file, "utf-8"));

if (validator(document)) {
    console.log("Valid file");
    process.exit(0);
} else {
    console.log(validator.errors);
    process.exit(1);
}
