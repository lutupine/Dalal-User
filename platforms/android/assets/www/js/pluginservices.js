/*
custom script
*/

function getCurrentLocation () {
    navigator.geolocation.getCurrentPosition (function (position) {
        cordova.plugins.notification.local.schedule({
            title: 'Location Notification',
            text: 'Lon : '+position.coords.longitude+' Lat : '+position.coords.latitude,
            foreground: true
        });
    }, function (error) {
        alert('code: '+error.code+'\n'+'message: '+error.message+'\n');
    });
}

function enableBackgroundServices () {
    cordova.plugins.backgroundMode.enable();
    cordova.plugins.backgroundMode.excludeFromTaskList();
    //cordova.plugins.backgroundMode.overrideBackButton();
    cordova.plugins.backgroundMode.setDefaults({
        title: 'CodeName-Dalal',
        text: 'Optimizing your shopping experience!',
        hidden: false
    });
    
    var counterFunction = null;

    cordova.plugins.backgroundMode.on('activate', function () {
        cordova.plugins.backgroundMode.disableWebViewOptimizations();
        cordova.plugins.notification.local.schedule({
            title: 'Background location tracking enabled',
            text: 'Working fine',
            foreground: true
        });
        var counter = 0;
        var locationfound = 0;
        counterFunction = setInterval(function () {
            counter++;
            cordova.plugins.notification.badge.set(counter);
            cordova.plugins.backgroundMode.configure({
                text: 'Optimizing your shopping experience since : ' +counter+' seconds'
            });

            if (counter % 60 == 0) {                    
                navigator.geolocation.getCurrentPosition(function(position) {
                    locationfound++;
                    cordova.plugins.notification.local.schedule({
                        title: 'Timed Location Notification found : '+locationfound,
                        text: 'lon : '+position.coords.longitude + 'lat : '+position.coords.latitude,
                        foreground: true
                    });
                }, function(error) {
                    console.log('code: '    + error.code    + '\n' + 'message: ' + error.message + '\n');
                }, { 
                    timeout: 30000, 
                    enableHighAccuracy: true 
                });
            }
        }, 1000);
    });

    cordova.plugins.backgroundMode.on('deactivate', function () {
        cordova.plugins.notification.badge.clear();
        clearInterval (counterFunction);
    });
}

function disableBackgroundServices () {  
    cordova.plugins.backgroundMode.disable();
}   

function FBlogin () {
    facebookConnectPlugin.login(
        ["public_profile"], 
        function (userData) {
            alert (userData.authResponse.userID);
        },
        function loginError (error) {
            alert(error)
        }
    );
}

function onBackKeyDown() {
    document.addEventListener("backbutton", function () {
        
    }, false);    
}

