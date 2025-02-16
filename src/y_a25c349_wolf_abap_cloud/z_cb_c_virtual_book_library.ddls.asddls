@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Virtual Book Library'
@Metadata: {
    allowExtensions: true,
    ignorePropagatedAnnotations: true
}
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ] }*/
define view entity Z_CB_C_VIRTUAL_BOOK_LIBRARY
  as select from Z_CB_I_BOOKS as Books
  association [1..1] to Z_CB_I_CATEGORY               as _Category     on  $projection.Category = _Category.CategoryId
  association [0..1] to Z_CB_I_BOOK_SALES_HISTORY     as _SalesHistory on  $projection.BookId = _SalesHistory.BookId
  association [0..1] to I_LanguageText                as _LanguajeText on  $projection.Languaje = _LanguajeText.Language
                                                                       and $projection.Languaje = _LanguajeText.LanguageCode
  association [0..*] to DDCDS_CUSTOMER_DOMAIN_VALUE_T as _Format       on  $projection.FormatType = _Format.value_low
  association [0..*] to Z_CB_C_CUSTOMER               as _Customer     on  $projection.BookId = _Customer.BookId
{

  key BookId,
      CategoryId                                   as Category,
      _Category.Description,
      Title,
      Author,
      Publisher,
      @ObjectModel.text.element: [ 'LanguageName' ]
      Languaje,
      _LanguajeText.LanguageName,
      NumPages,
      @Semantics.amount.currencyCode: 'Currency'
      Price,
      Currency,
      _SalesHistory.QuantityBooksSold,
      case
        when _SalesHistory.QuantityBooksSold <= 1 then 1
        when _SalesHistory.QuantityBooksSold = 2 then 2
        when _SalesHistory.QuantityBooksSold > 2 then 3
        else 1
      end                                          as SaleStatus,
      
      @ObjectModel.text.element: [ 'FormatName' ]
      FormatType,
      _Format( p_domain_name:'ZD_CB_FORMAT' ).text as FormatName,
      Url                                          as URLImage,

      _Customer
}
