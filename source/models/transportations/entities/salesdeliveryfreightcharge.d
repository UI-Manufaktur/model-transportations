module models.transportations.entities.inventoryfreightcharge;

@safe:
import models.transportations;

class DTransportationSalesDeliveryFreightChargeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationSalesDeliveryFreightChargeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "accessorialChargeMasterCode": StringAttribute, //
        "shippingCarrierId": UUIDAttribute, //
        "shippingCarrierServiceId": UUIDAttribute, //
        "orderingCustomerAccountNumber": StringAttribute, //
        "effectiveStartDate": StringAttribute, //
        "effectiveEndDate": StringAttribute, //
        "deliveryTermsCode": StringAttribute, //
        "isFreightChargeIgnored": StringAttribute, //
        "warehouseId": UUIDAttribute, //
        "operationalSiteId": UUIDAttribute, //
        "transportationMethodId": UUIDAttribute, //
        "freightChargeType": StringAttribute, //
        "salesDeliveryChargeCode": StringAttribute, //
        "transportationModeCode": StringAttribute, //
        "freightChargeCategoryType": StringAttribute, //
        "relationship_AccessorialChargeMasterRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierRelationshipId": UUIDAttribute, //
        "relationship_ShippingCarrierServiceRelationshipId": UUIDAttribute, //
        "relationship_OrderingCustomerRelationshipId": UUIDAttribute, //
        "relationship_DeliveryTermsRelationshipId": UUIDAttribute, //
        "relationship_WarehouseRelationshipId": UUIDAttribute, //
        "relationship_OperationalSiteRelationshipId": UUIDAttribute, //
        "relationship_TransportationMethodRelationshipId": UUIDAttribute, //
        "relationship_TransportationModeRelationshipId": UUIDAttribute, //
        "relationship_SalesDeliveryChargeRelationshipId": UUIDAttribute, //
        "BackingTable_TMSMiscellaneousChargeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_salesdeliveryfreightcharges");
  }
}
mixin(EntityCalls!("TransportationSalesDeliveryFreightChargeEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationSalesDeliveryFreightChargeEntity);
  
    auto entity = TransportationSalesDeliveryFreightChargeEntity;
    // TODO more tests
  }
}