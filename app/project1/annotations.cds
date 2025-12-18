using EmployeeService as service from '../../srv/service';
annotate service.Employees with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Empid',
                Value : Empid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Empname',
                Value : Empname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Dept',
                Value : Dept,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Location',
                Value : Location,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Salary',
                Value : Salary,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Empid',
            Value : Empid,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Empname',
            Value : Empname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Dept',
            Value : Dept,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Location',
            Value : Location,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Salary',
            Value : Salary,
        },
    ],
);

