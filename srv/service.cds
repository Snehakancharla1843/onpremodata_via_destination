service EmployeeService  @(requires:'authenticated-user') {

   @(odata.draft.enabled)
  //  @restrict : [
  //    { grant: '*',    to: 'AdminRole' },
  //   {grant:'READ', to: 'ViewerRole'}

  //  ]

  //    @restrict: [
  //   { grant: '*',    to: 'AdminRole' },
  //   { grant: 'READ', to: 'ViewerRole' }
  // ]
  entity Employees {
    key Empid : Integer;
    Empname   : String;
    Dept      : String;
    Location  : String;
    Salary    : Decimal(12,2);
  }
}

