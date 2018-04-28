/*
custom script
*/
// onSuccess Callback
// This method accepts a Position object, which contains the
// current GPS coordinates
//
function onSuccess(position) {

    cordova.plugins.notification.local.requestPermission(function (granted) {
        cordova.plugins.notification.local.schedule({
            title: 'Test Success'+position.timestamp,
            text: 'Location : x ' + position.coords.latitude +' y '+ position.coords.longitude,
            foreground: true
        });                
    }); 
    alert('Latitude: '          + position.coords.latitude          + '\n' +
        'Longitude: '         + position.coords.longitude         + '\n' +
        'Altitude: '          + position.coords.altitude          + '\n' +
        'Accuracy: '          + position.coords.accuracy          + '\n' +
        'Altitude Accuracy: ' + position.coords.altitudeAccuracy  + '\n' +
        'Heading: '           + position.coords.heading           + '\n' +
        'Speed: '             + position.coords.speed             + '\n' +
        'Timestamp: '         + position.timestamp                + '\n'
    );
    //$("#xcor").val(position.coords.latitude);
    //$("#ycor").val(position.coords.longitude);
}

// onError Callback receives a PositionError object
//
function onError(error) {
    alert('code: '    + error.code    + '\n' +
            'message: ' + error.message + '\n');
}

function GetCurrentLocation () {
    alert('location notification here');
}

function enableBackgroundMode () {
    //cordova.plugins.backgroundMode.enable();
    //cordova.plugins.backgroundMode.setDefaults({ silent: true });
    //cordova.plugins.backgroundMode.onactivate = triggerFunction ();
}

function triggerFunction () {
    //setInterval(function () {
        //GetCurrentLocation();
    //}, 10000);
}

