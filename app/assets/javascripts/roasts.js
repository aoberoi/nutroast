var showStarted = false;
var roasteeIsReady = false;
var sessionId = '1_MX4yMDIwNzQzMX5-U3VuIFNlcCAwOSAxMToxMTo1MyBQRFQgMjAxMn4wLjEwOTQwODQ0fg';
var apiKey = '20207431';
var token = 'T1==cGFydG5lcl9pZD0yMDIwNzQzMSZzaWc9Mjc3ZGU2ODNmNGZjOTNjODAwYzc4OTViZjBiMTZkYzVlYTY3ZmU2MTpzZXNzaW9uX2lkPTFfTVg0eU1ESXdOelF6TVg1LVUzVnVJRk5sY0NBd09TQXhNVG94TVRvMU15QlFSRlFnTWpBeE1uNHdMakV3T1RRd09EUTBmZyZjcmVhdGVfdGltZT0xMzQ3MjE0MzIwJmV4cGlyZV90aW1lPTEzNDk4MDYzMjAmcm9sZT1tb2RlcmF0b3ImY29ubmVjdGlvbl9kYXRhPSZub25jZT00MzQxNTI=';
$(document).ready(function() {
	$('.roast-setup-yes').click(function(event) {
		publishRoastee();
	});

});

TB.setLogLevel(5);
var session = TB.initSession(sessionId);
session.addEventListener('sessionConnected', sessionConnectedHandler);
session.addEventListener('signalRecieved', startShow);
session.connect(apiKey, token);

function sessionConnectedHandler(event) {
	$('#roast-setup').reveal();
	if (event.streams.length > 0) {
		startShow();
	}
	$('.roast-setup-yes').click(function() {
		$('#roast-setup').trigger('reveal:close');
	});
}

var archives = [];
var recorderManager;

// only gets called when connected and roastee is here
function startShow() {
	recorderManager = TB.initRecorderManager(apiKey);
	// play through the queue
	$('.story-record').each(function(i, s) {
		archives.push($(s).data('story'));
	});
	next();
}

function next() {
	if (archives.length > 0) {
		var archiveId = archives[0];
		$('<div id="roast-' + archiveId + '"></div>').appendTo($('.roaster-content'));
		player = recorderManager.displayPlayer(archiveId, token, 'roast-' + archiveId, { autoPlay : true , style : { buttonDisplayMode : 'off' }, width: 320, height: 240 });
		player.addEventListener('playbackStopped', function() {
			archives.splice(0, 1);
			recorderManager.removePlayer(player);
			next();
		});
	}
}

function publishRoastee() {
	session.publish('roastee-video', { width: 320, height: 240 });
	session.signal();
	startShow();
}





