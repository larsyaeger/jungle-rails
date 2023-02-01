describe('product details spec tests', () => {
  beforeEach(() => {
    cy.visit('/')
  })  
  
  it("should navigate to product detail page by clicking on a product", () => {
    cy.get('img[alt="Scented Blade"]').click()
    cy.url().should('be.equal', 'http://127.0.0.1:60129/products/2')
  });

})