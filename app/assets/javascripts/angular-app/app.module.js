angular.module('restauranteurApp', [
  'ngResource',
  'ngAnimate',
  'templates', // Angular rails templates module
  'ui.router',
  'ngMaterial',
  'Devise'
]);

angular.module('restauranteurApp')
  .run(['$rootScope', function($rootScope) {

  }]);

angular.module('restauranteurApp')
  .controller('RootController', ['$scope', function($scope) {

  }]);
