(function() {
 'use strict';
 angular.module('restauranteurApp').factory ('OrderService', ['$resource', function($resource) {

   var OrderResource = $resource('/orders/:id/:operation.json', {
     id: '@id',
     operation: '@operation'
   }, {
     'update': {
        method:'PUT'
      }
   });

   return OrderResource;
 }]);

})();
