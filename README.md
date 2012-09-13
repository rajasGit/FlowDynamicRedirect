FlowDynamicRedirect
===================

Flow Sample to show Dynamic Redirect to a record detail page when the user finishes a flow

This is a sample Salesforce ANT package which can be used to see how you can redirect the user
to the detail page of a record created in the flow when the user clicks on the Finish button.

Note that this works only for Flows embedded in a Visualforce page and will not work if you are
simple running the flow through the url.


Instructions( When using Salesforce Ant)
-----------------------------------------
1. Get the package
2. Modify the build.properties file to point to your salesforce instance
3. run 'ant deployUnpackaged'
4. Run the flow by going to the Visualforce Page http://<instance URL>/apex/takeMetoAccount


Instructions( When NOT using Salesforce Ant)
-----------------------------------------
1. Get the package
2. Use the IDE or any other MD API based tool to create the Flow includes in this package
3. Create the Visualforce Page and the Apex Controller class listed in the package manually.

