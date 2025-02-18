@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Search help view for Publisher'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel:{
    dataCategory: #VALUE_HELP,
    representativeKey: 'Publisher',
    resultSet.sizeCategory: #XS,
    usageType: {
        sizeCategory: #S,
        dataClass: #CUSTOMIZING,
        serviceQuality: #A },
    supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
    modelingPattern: #VALUE_HELP_PROVIDER }
@Search.searchable: true
@Consumption: { ranked: true,
                valueHelpDefault: {
                    fetchValues: #AUTOMATICALLY_WHEN_DISPLAYED } }

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ] }*/
define view entity Z_CB_I_PUBLISHER_STDVH
  as select distinct from Z_CB_I_BOOKS as Books
{
      @Search.defaultSearchElement: true
      @Search.ranking: #HIGH
      @Search.fuzzinessThreshold: 0.8
  key Publisher
}
