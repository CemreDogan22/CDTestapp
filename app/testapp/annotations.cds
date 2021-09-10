using CatalogService as service from '../../srv/interaction_srv';
using from '../../srv/common';

/** List Report  */
annotate service.Main with @(

    UI : {
        LineItem  : [
            { Label : 'ID', Value : ID }
        ],
    }
);

/** Object Page - Detail Ansicht */
annotate service.Main with @(

    UI.HeaderInfo : {
        TypeName : 'ID',
        TypeNamePlural : 'IDs',
        Title : { $Type : 'UI.DataField', Value : ID}
    },

    UI.Facets : [
        {
        $Type: 'UI.ReferenceFacet', 
        Label: 'Main', 
        Target: '@UI.FieldGroup#Main'
        }
    ],

    UI.FieldGroup#Main : {
        Data: [
            {Value: element1_code, Label : 'Choose between Yes or No'},
            {Value: element2, Label : 'Hidden/Visible Element', ![@UI.Hidden] : testbool},
            {Value: element3, Label : 'Hidden/Visible Element', ![@UI.Hidden] : testbool},
            {Value: element4_code, Label : 'Choose multiple options'}
        ]        
    }
);