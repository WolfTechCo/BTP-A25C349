@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customers'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #M,
    dataClass: #MASTER
}
define view entity Z_CB_I_CUSTOMER
  as select from zcb_customer
{
  key customer_id    as CustomerId,
  key access_type_id as AccessTypeId,
      name           as Name,
      lastname       as Lastname,
      email          as Email,
      url            as Url
}
