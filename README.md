# Salesforce Canvas Demo

1. Click the button below to deploy this project to Salesforce

<a href="https://githubsfdeploy.herokuapp.com?owner=CodeScience&repo=canvas-demo&ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

2. Deploy the NodeJS canvas app sample available in this [repo](https://github.com/CodeScience/nodejs-canvas-app-sample) in Heroku.

3. Update your canvas apps with the domain of your recently deployed Heroku app. Go to Setup > App Manager > edit.

4. Replace the `https://floating-coast-17771.herokuapp.com` with your Heroku app domain.

5. Navigate to your Salesforce org and create a Contact record. Copy the Contact Id from the URL and navigate to the canvas apps by using the following URL pattern. For example:

`https://<mydomain>--c.visualforce.com/apex/CanvasDemoWithSignedRequest?id=0030R00001K9dxbQAB`

`https://<mydomain>--c.visualforce.com/apex/CanvasDemoWithOAuth?id=0030R00001K9dxbQAB`

Note: if you are using SFDX to login into Salesforce, you will get an "invalid session" error in your canvas apps. Make sure you login via UI (e.g. https://test.salesforce.com or https://login.salesforce.com)