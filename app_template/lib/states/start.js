require('#{APPNAME}/core');

App.StartState = Ember.ViewState.extend({

  view: Ember.View.extend({
    templateName: '#{APPNAME}/~templates/main_page'
  })

});
