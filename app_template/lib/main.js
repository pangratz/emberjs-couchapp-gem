require('#{APPNAME}/core');
require('#{APPNAME}/store');
require('#{APPNAME}/state_manager');
require('#{APPNAME}/routes');

// SC.routes.wantsHistory = true;
SC.routes.add('', App, App.routes.mainRoute);
