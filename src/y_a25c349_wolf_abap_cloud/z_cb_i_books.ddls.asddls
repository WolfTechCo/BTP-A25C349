@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #M,
    dataClass: #MASTER
}
define view entity Z_CB_I_BOOKS
  as select from zcb_books
{
  key book_id     as BookId,
  key category_id as CategoryId,
      title       as Title,
      author      as Author,
      publisher   as Publisher,
      languaje    as Languaje,
      num_pages   as NumPages,
      @Semantics.amount.currencyCode: 'Currency'
      price       as Price,
      currency    as Currency,
      format_type as FormatType,
      url         as Url
}
