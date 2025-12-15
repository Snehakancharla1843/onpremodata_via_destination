const cds = require("@sap/cds");

try {
  const env = require("./default-env.json");
  process.env.VCAP_SERVICES = JSON.stringify({
    destination: [{ credentials: { destinations: env.destinations } }]
  });
  console.log("Loaded default-env.json for local testing.");
} catch (err) {
  console.log("default-env.json not found (CF mode).");
}

module.exports = cds.server;


