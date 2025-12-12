sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller, MessageToast) {
  "use strict";

  return Controller.extend("project1.controller.View1", {

    onInit: function () {
    },

    onRefresh: function () {
      const oTable = this.byId("idEmployeeTable");
      const oBinding = oTable && oTable.getBinding("items");
      if (oBinding) {
        oBinding.refresh();
        MessageToast.show("Data refreshed");
      }
    }

  });
});