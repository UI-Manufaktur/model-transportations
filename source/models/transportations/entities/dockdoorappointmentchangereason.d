module models.transportations.entities.dockdoorappointmentchangereason;

@safe:
import models.transportations;

class DTransportationDockDoorAppointmentChangeReasonEntity : DOOPEntity {
  mixin(EntityThis!("TransportationDockDoorAppointmentChangeReasonEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "reasonCode": StringAttribute, //
        "reasonDescription": StringAttribute, //
        "backingTable_TMSChangeReasonRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("transportation_dockdoorappointmentchangereasons");
  }
}
mixin(EntityCalls!("TransportationDockDoorAppointmentChangeReasonEntity"));

version(test_model_transportation) {
  unittest {
    assert(TransportationDockDoorAppointmentChangeReasonEntity);
  
    uto entity = TransportationDockDoorAppointmentChangeReasonEntity;
    // TODO more tests
  }
}