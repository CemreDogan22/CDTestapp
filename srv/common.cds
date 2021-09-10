namespace slah.db;
using CatalogService as service from './interaction_srv';

annotate service.Main with {
    element1 @Common : {
        Text            : element1.name,
        TextArrangement : #TextOnly,
        ValueListWithFixedValues
    };
    element4 @Common : {
        Text            : element4.name,
        TextArrangement : #TextOnly,
        ValueListWithFixedValues
    };
}; 

annotate service.YesNo with {
    code @UI.Hidden @Common : {
        Text : name,
        TextArrangement : #TextOnly
    } 
};

annotate service.Options with {
    code @UI.Hidden @Common : {
        Text : name,
        TextArrangement : #TextOnly
    } 
};
