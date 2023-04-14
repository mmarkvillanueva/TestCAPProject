
namespace TestCAPProject.db;

entity Sales {
  key ID          : Integer;
      region      : String(100);
      country     : String(100);
      org         : String(4);
      amount      : Integer;
      comments    : String(100);
      criticality : Integer;
};

entity Users {
  key userId         : UUID @(Core.Computed: true);
      organizationId : UUID;
      userTypeId     : UUID;
      parentId       : UUID;
      firstName      : String(100);
      lastName       : String(100);
      dateOfBirth    : Date;
      contactNumber  : String(50);
}

entity Actions {
  key actionId              : UUID @(Core.Computed: true);
      // userId                : UUID;
      userId                : Association to Users;
      actionValue           : String;
      actionDate            : Date;
      actionTime            : Time;
      predictedActionResult : String;
      predictionDate        : Date;
      predictionTime        : Time;
      actualActionResult    : String;
      actualActionDate      : Date;
      actualActionTime      : Time;
}


