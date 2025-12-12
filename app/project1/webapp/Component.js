sap.ui.define([
    "sap/ui/core/UIComponent",
    "project1/model/models",
], function (UIComponent, models) {
  "use strict";

  return UIComponent.extend("project1.Component", {
    metadata: {
      manifest: "json",
      interfaces: [
        "sap.ui.core.IAsyncContentCreation"
      ]
    },

    init: function () {
      UIComponent.prototype.init.apply(this, arguments);

      // device model only
      this.setModel(models.createDeviceModel(), "device");

      // DO NOT create OData model here
      // OData V4 model will be taken from manifest.json (serviceUrl: /odata/v4/employee/)

      this.getRouter().initialize();
    }
  });
});