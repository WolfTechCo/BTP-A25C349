@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Book Sales History'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_CB_I_BOOK_SALES_HISTORY
  as select from Z_CB_I_CUSTOMER_BOOKS as CustomerBook
{
  key BookId,
      count( distinct CustomerId ) as QuantityBooksSold
}
group by
  BookId;
