const cds = require("@sap/cds");
const { executeHttpRequest } = require("@sap-cloud-sdk/http-client");

module.exports = cds.service.impl(function () {

  const { Employees } = this.entities;

  this.on("READ", Employees, async () => {
    try {
      const response = await executeHttpRequest(
        { destinationName: "S4H" },
        {
          method: "GET",
          url: "/sap/opu/odata/sap/Z301641_EMPLOYEE_ODATACRUD_SRV/EMPLOYEE_LISTSet/?$format=json"
        }
      );

      const results = response.data.d.results;

      return results.map(r => ({
        Empid: r.Empid,
        Empname: r.Empname,
        Dept: r.Dept,
        Location: r.Location,
        Salary: r.Salary
      }));

    } catch (err) {
      console.error("ERROR fetching SAP OData:", err);
      throw err;
    }
  });

});

