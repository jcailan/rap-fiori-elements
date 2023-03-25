sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/jhodel/rap/travellist/test/integration/FirstJourney',
		'com/jhodel/rap/travellist/test/integration/pages/TravelList',
		'com/jhodel/rap/travellist/test/integration/pages/TravelObjectPage'
    ],
    function(JourneyRunner, opaJourney, TravelList, TravelObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/jhodel/rap/travellist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTravelList: TravelList,
					onTheTravelObjectPage: TravelObjectPage
                }
            },
            opaJourney.run
        );
    }
);