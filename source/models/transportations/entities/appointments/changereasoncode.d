module models.transportations.entities.appointments.changereasoncode;

@safe:
import models.transportations;

class DTransportationAppointmentChangeReasonCodeEntity : DOOPEntity {
  mixin(EntityThis!("TransportationAppointmentChangeReasonCodeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "reasonDescription": StringAttribute, //
        "reasonCode": StringAttribute, //
        "backingTable_TMSChangeReasonRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, //
      ])
      .registerPath("transportation_accessorialchargemasters");
  }
}
mixin(EntityCalls!("transportation_appointmentchangereasoncodes"));

version(test_model_transportation) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
    auto entity = TMSAccessorialChargeMasterEntity;    
    // TODO more tests
  }
}