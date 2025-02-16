@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customers'
@Metadata: {
    allowExtensions: true,
    ignorePropagatedAnnotations: true
}
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_CB_C_CUSTOMER
  as select from Z_CB_I_CUSTOMER as Customer
  association [0..*] to Z_CB_I_CUSTOMER_BOOKS as _CustomerBook   on $projection.CustomerId = _CustomerBook.CustomerId
  association [0..*] to Z_CB_I_ACC_CATEGORY   as _AccessCategory on $projection.AccessTypeId = _AccessCategory.AccessTypeId
{
  key CustomerId,
  key AccessTypeId,
  key _CustomerBook.BookId,
      Name,
      Lastname,
      concat_with_space( Name, Lastname, 1 ) as FullName,
      Email,
      Url                                    as URLImage,

      _AccessCategory
}
