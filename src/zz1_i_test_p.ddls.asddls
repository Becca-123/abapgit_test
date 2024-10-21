@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Parameter 測試'
@Metadata.ignorePropagatedAnnotations: true
//@ObjectModel.resultSet.sizeCategory: #XS
//@ObjectModel.usageType:{
//    serviceQuality: #X,
//    sizeCategory: #L,
//    dataClass: #MIXED
//}
define view entity ZZ1_I_TEST_P 
with parameters 
@Consumption.valueHelpDefinition: [ { entity: { name: 'I_ProductStdVH', element: 'Product' } } ]
p_matnr : matnr  
as select from I_Product
{
     @Consumption.valueHelpDefinition: [ { entity: { name: 'I_ProductStdVH', element: 'Product' } } ]
     @UI: {
             lineItem: [{ position: 10, importance: #HIGH }]
    //         selectionField: [{ position: 10 }]
           }
    @EndUserText.label: '物料'
    key Product,
     @UI: {
             lineItem: [{ position: 20, importance: #HIGH }],
             selectionField: [{ position: 20 }]
           }
    @EndUserText.label: '物料類型'
    ProductType
}
