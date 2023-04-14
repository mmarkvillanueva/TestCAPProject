using {TestCAPProject.db as db} from '../db/data-model';

annotate db.Users with {
    firstName @title : 'First Name';
    lastName @title: 'Last Name';
    contactNumber @title: 'Contact Number';
    dateOfBirth @title: 'Date of Birth';
};


annotate db.Users with @(
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


// annotate CatalogService.Books with @(
//   UI: {
//     SelectionFields: [ ID, price, currency_code ],
//     LineItem: [
//       {Value: title},
//       {Value: author, Label:'{i18n>Author}'},
//       {Value: genre.name},
//       {Value: price},
//       {Value: currency.symbol, Label:' '},
//     ]
//   }
// );