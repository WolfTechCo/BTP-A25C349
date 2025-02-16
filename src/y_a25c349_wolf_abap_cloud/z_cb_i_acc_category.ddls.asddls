@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Access Type - Category'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #CUSTOMIZING
}
@Metadata.allowExtensions: true
define view entity Z_CB_I_ACC_CATEGORY
  as select from zcb_acc_category
  association [0..1] to Z_CB_I_CATEGORY as _Category on $projection.CategoryId = _Category.CategoryId
{
  key category_id           as CategoryId,
  key access_type_id        as AccessTypeId,
      _Category.Description as Description
}
