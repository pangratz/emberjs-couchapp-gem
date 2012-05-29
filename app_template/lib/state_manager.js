require('#{APPNAME}/core');
require('#{APPNAME}/states/start');

App.stateManager = Ember.StateManager.create({

  rootElement: '#main',
  initialState: 'start',

  start: App.StartState

});
