
	var showStarted = false;
	var roasteeIsReady = false;
	var sessionId = '1_MX4yMDIwNzQzMX5-U3VuIFNlcCAwOSAwODozOTowNCBQRFQgMjAxMn4wLjg5NzI1MjQ0fg';
	var apiKey = '20207431';
	var token = 'T1==cGFydG5lcl9pZD0yMDIwNzQzMSZzaWc9ZGMwZDc3MDY2MDJjNzBmYzViYTIyMTY5NDg4ZTQzNmU1MWU0NjRhNDpzZXNzaW9uX2lkPTFfTVg0eU1ESXdOelF6TVg1LVUzVnVJRk5sY0NBd09TQXdPRG96T1Rvd05DQlFSRlFnTWpBeE1uNHdMamc1TnpJMU1qUTBmZyZjcmVhdGVfdGltZT0xMzQ3MjA1MjExJmV4cGlyZV90aW1lPTEzNDcyOTE2MTEmcm9sZT1wdWJsaXNoZXImY29ubmVjdGlvbl9kYXRhPSZub25jZT00OTU5NjQ=';
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
	}

	// only gets called when connected and roastee is here
	function startShow() {
		// play through the queue

	}

	function publishRoastee() {
		session.publish('roastee-video');
		session.signal();
	}



