@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forBooking'
@ObjectModel.semanticKey: [ 'BookingID' ]
@Search.searchable: true
define view entity ZC_FE_Booking_002306
  as projection on ZI_FE_Booking_002306
{
  key BookingUUID,
      TravelUUID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      BookingID,
      BookingDate,
      @EndUserText.label: 'Customer'
      @ObjectModel.text.element: ['LastName']
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: '/DMO/I_Customer',
          element: 'CustomerID'
        }
      } ]
      CustomerID,
      _Customer.LastName as LastName,
      @EndUserText.label: 'Airline'
      @ObjectModel.text.element: ['CarrierName']
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'zi_fe_carr_002306',
          element: 'AirlineID'
        }
      } ]
      CarrierID,
      _Carrier.Name      as CarrierName,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'zi_fe_flig_002306',
          element: 'ConnectionID'
        },
        additionalBinding: [ {
          localElement: 'FlightDate',
          element: 'FlightDate'
        }, {
          localElement: 'CarrierID',
          element: 'AirlineID'
        }, {
          localElement: 'FlightPrice',
          element: 'Price'
        }, {
          localElement: 'CurrencyCode',
          element: 'CurrencyCode'
        } ]
      } ]
      ConnectionID,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'I_Currency',
          element: 'Currency'
        }
      } ]
      CurrencyCode,
      CreatedBy,
      LastChangedBy,
      LocalLastChangedAt,
      _Travel : redirected to parent ZC_FE_Travel_002306,
      _Connection,
      _Flight,
      _Carrier,
      _Currency,
      _Customer

}
