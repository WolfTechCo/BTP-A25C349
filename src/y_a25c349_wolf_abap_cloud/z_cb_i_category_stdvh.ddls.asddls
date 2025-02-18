@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Search help view for Categories'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel:{
    dataCategory: #VALUE_HELP,
    representativeKey: 'CategoryId',
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
define view entity Z_CB_I_CATEGORY_STDVH
  as select from Z_CB_I_CATEGORY
{
      @Search.defaultSearchElement: true
      @Search.ranking: #HIGH
      @Search.fuzzinessThreshold: 0.8
      @ObjectModel.text.element: [ 'Description' ]
  key CategoryId,
      @Search.defaultSearchElement: true
      @Search.ranking: #MEDIUM
      @Search.fuzzinessThreshold: 0.8
      Description
}
