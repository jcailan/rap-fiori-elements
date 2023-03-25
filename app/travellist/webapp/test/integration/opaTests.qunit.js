sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/jhodel/rap/travellist/test/integration/FirstJourney',
		'com/jhodel/rap/travellist/test/integration/pages/TravelList',
		'com/jhodel/rap/travellist/test/integration/pages/TravelObjectPage',
		'com/jhodel/rap/travellist/test/integration/pages/BookingObjectPage'
    ],
    function(JourneyRunner, opaJourney, TravelList, TravelObjectPage, BookingObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/jhodel/rap/travellist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTravelList: TravelList,
					onTheTravelObjectPage: TravelObjectPage,
					onTheBookingObjectPage: BookingObjectPage
                }
            },
            opaJourney.run
        );
    }
);