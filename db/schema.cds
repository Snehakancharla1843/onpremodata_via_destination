namespace my.student;

using { managed, cuid } from '@sap/cds/common';

entity Students : cuid, managed {
  studentId   : String(20);
  fullName    : String(100);
  email       : String(100);
  department  : String(50);
  semester    : Integer;
}
