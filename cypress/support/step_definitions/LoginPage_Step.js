const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

When("Email alanina bir email yazarim", () => {
  cy.get("#email").type("admin@practicesoftwaretesting.com");
});
When("Password alanina bir password yazarim", () => {
  cy.get("#password").type("welcome01");
});
When("Login butonuna tiklarim", () => {
  cy.get("[value='Login']").click();
});
When("Email alanini bos birakirim", () => { });

Then("Email'in gerekli oldugunu soyleyen bir hata mesaji gorurum", () => {
  cy.get("[data-test='email-error']").should("contain", "E-mail is required.");
});

When("Email alanina {string} yazarim", (email) => {
  cy.get("#email").type(email)
})

When("Password alanina {string} yazarim", (password) => {
  cy.get("#password").type(password)
})

When("Password alanina {int} yazarim", (password) => {
  cy.get("#password").type(password)
})
