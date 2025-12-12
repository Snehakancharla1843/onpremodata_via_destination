
service EmployeeService {
    entity Employees {
        key Empid : Integer;
        Empname   : String;
        Dept      : String;
        Location  : String;
        Salary    : Decimal(12,2);
    }
}
