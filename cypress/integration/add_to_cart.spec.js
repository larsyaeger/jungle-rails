describe('product details spec tests', () => {
  beforeEach(() => {
    cy.visit('/')
  })  
  
  it("should increase items in cart by 1 after clicking add to cart", () => {
    cy.contains('.nav-link', 'My Cart (0)')
    cy.contains('.nav-link', 'My Cart (1)').should('not.exist')
    cy.get('.btn').first().click({ force: true })
    cy.contains('.nav-link', 'My Cart (1)')
    cy.contains('.nav-link', 'My Cart (0)').should('not.exist')
  });

})