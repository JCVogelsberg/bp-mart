BpMart.Router.map(function() {
  this.resource('products', {path: '/'}, function() {
    this.resource('new_product', { path: '/products/new' });
  });
  this.resource('product', { path: '/products/:id' });
  this.resource('edit_product', { path: '/products/:id/edit' });
});




// For more information see: http://emberjs.com/guides/routing/
