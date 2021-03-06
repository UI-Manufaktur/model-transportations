module models.transportations.entities.freights.bills.matchingaudits.tolerancelevels.level;

@safe:
import models.transportations;

class DTransportationFreightBillMatchingAuditToleranceLevelEntity : DOOPEntity {
  mixin(EntityThis!("TransportationFreightBillMatchingAuditToleranceLevelEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "underpaymentFreightBillReconcilliationReasonCode": StringAttribute, // 
        "toleranceLevelId": UUIDAttribute, // 
        "maximumAuditToleranceUnitType": StringAttribute, // 
        "minimumAuditToleranceUnitType": StringAttribute, // 
        "shippingCarrierId": UUIDAttribute, // 
        "freightBillTypeId": UUIDAttribute, // 
        "warehouseId": UUIDAttribute, // 
        "operationalSiteId": UUIDAttribute, // 
        "overpaymentFreightBillReconcilliationReasonCode": StringAttribute, // 
        "toleranceSequenceNumber": StringAttribute, // 
        "minimumAuditToleranceAmount": StringAttribute, // 
        "minimumAuditTolerancePercentage": StringAttribute, // 
        "maximumAuditToleranceAmount": StringAttribute, // 
        "maximumAuditTolerancePercentage": StringAttribute, // 
        "backingTable_TMSAuditMasterRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("transportation_freightbillmatchingaudittolerancelevels");
  }
}
mixin(EntityCalls!("TransportationFreightBillMatchingAuditToleranceLevelEntity"));

version(test_model_transportation) {
  unittest {
    assert(TMSFreightBillMatchingAuditToleranceLevelEntity);
  
    auto entity = TMSFreightBillMatchingAuditToleranceLevelEntity;
    // TODO more tests
  }
}