
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
      @UI.Hidden
  key userId         : UUID @(Core.Computed: true);
      @UI.Hidden
      organizationId : UUID;
      @UI.Hidden
      userTypeId     : UUID;
      @UI.Hidden
      parentId       : UUID;
      @Search.defaultSearchElement: true
      firstName      : String(100);
      @Search.defaultSearchElement: true
      lastName       : String(100);
      @Search.defaultSearchElement: true
      dateOfBirth    : Date;
      @Search.defaultSearchElement: true
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


