sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.jhodel.rap.travellist',
            componentId: 'TravelList',
            entitySet: 'Travel'
        },
        CustomPageDefinitions
    );
});