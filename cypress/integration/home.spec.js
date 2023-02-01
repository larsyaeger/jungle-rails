describe('home spec tests', () => {
  beforeEach(() => {
    cy.visit('/')
  })  
  
  it("there is 2 products on the page", () => {
    cy.get('.products article').should('have.length', 2);
  });

})
