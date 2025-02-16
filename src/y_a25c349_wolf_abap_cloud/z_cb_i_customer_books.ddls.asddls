@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customers - Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #M,
    dataClass: #TRANSACTIONAL
}
define view entity Z_CB_I_CUSTOMER_BOOKS
  as select from zcb_cust_books
{
  key customer_id as CustomerId,
  key book_id     as BookId
}
