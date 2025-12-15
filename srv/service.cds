using { my.student as db } from '../db/schema';


service EmployeeService @(path:'/odata/v4/emp-direct') {
  entity Employees {
    key Empid : Integer;
    Empname   : String;
    Dept      : String;
    Location  : String;
    Salary    : Decimal(12,2);
  }
}

