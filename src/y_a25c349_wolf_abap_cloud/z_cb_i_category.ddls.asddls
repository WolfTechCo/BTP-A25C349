@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categories'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_CB_I_CATEGORY
  as select from zcb_categories
{
  key category_id as CategoryId,
      description as Description
}
