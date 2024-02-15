const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

Given("Ben ToolShop sitesine giderim", () => {
  cy.visit("https://practicesoftwaretesting.com/#/");
});
When("Sign in linkine tiklarim", () => {
  cy.get("[data-test='nav-sign-in']").click();
})
