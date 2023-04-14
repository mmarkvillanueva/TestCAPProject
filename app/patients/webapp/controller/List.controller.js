sap.ui.define([
    "./BaseController",
    "../model/formatter"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (BaseController, formatter) {
        "use strict";

        return BaseController.extend("patients.controller.List", {

            formatter: formatter,

            onInit: function () {

            },

            /**
             * Event handler when a table item gets pressed
             * @param {sap.ui.base.Event} oEvent the table selectionChange event
             * @public
             */
            onPress: function (oEvent) {
                // The source is the list item that got pressed
                this._showObject(oEvent.getSource());
            },            

            /* =========================================================== */
            /* internal methods                                            */
            /* =========================================================== */

            /**
             * Shows the selected item on the object page
             * @param {sap.m.ObjectListItem} oItem selected Item
             * @private
             */
            _showObject: function (oItem) {
                this.getRouter().navTo("Details", {
                    objectId: oItem.getBindingContext().getPath().substring("/Users".length)
                });
            },


        });
    });
