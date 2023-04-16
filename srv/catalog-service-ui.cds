using CatalogService as service from './catalog-service';

annotate service.Users with {
    firstName @title : 'First Name';
    lastName @title: 'Last Name';
    contactNumber @title: 'Contact Number';
    dateOfBirth @title: 'Date of Birth';
};


annotate service.Users with @(
    UI: {
        SelectionFields: [
            firstName,
            lastName,
            contactNumber
        ],
        LineItem: [
            // {Value: firstName, Label: 'First Name'},
            // {Value: lastName, Label: 'Last Name'},
            // {Value: dateOfBirth, Label: 'Date of Birth'},
            // {Value: contactNumber, Label: 'Contact Number'}
            {Value: firstName},
            {Value: lastName},
            {Value: dateOfBirth},
            {Value: contactNumber}            
        ]
    }
);