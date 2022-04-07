using OfficeSuppliesService as service from '../../srv/officesupplies-service';

annotate service.Suppliers with @(
    UI.PresentationVariant                  : {
        Text           : 'Default',
        SortOrder      : [{Property : name}],
        Visualizations : ['@UI.LineItem']
    },

    UI.HeaderInfo                           : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'Supplier',
        TypeNamePlural : 'Suppliers',
        Title          : {
            Label : 'Identifier',
            Value : identifier
        },
        Description    : {
            Label : 'Supplier Name',
            Value : name
        }
    },
    UI.LineItem                             : [
        {
            $Type : 'UI.DataField',
            Label : 'Identifier',
            Value : identifier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Building',
            Value : building,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Street',
            Value : street,
        },
    ],
    UI.FieldGroup #HeaderGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Identifier',
                Value : identifier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Building',
                Value : building,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Street',
                Value : street,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Postal Code',
                Value : postCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'City',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : country,
            },
        ],
    },
    UI.Facets                               : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'HeaderGeneralInformation',
            Label  : 'Supplier General Information',
            Target : '@UI.FieldGroup#HeaderGeneralInformation',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'Items',
            Label  : 'Product Details',
            Target : 'products/@UI.LineItem',

        }
    ]
);


annotate service.Products with @(
    UI.HeaderInfo                            : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'Product',
        TypeNamePlural : 'Products',
        Title          : {
            Label : 'ID',
            Value : identifier
        },
        Description    : {
            Label : 'Name',
            Value : title
        }
    },
    UI.LineItem                              : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : identifier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Availability',
            Value : availability,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Currency',
            Value : currency_code,
        },

    ],
    UI.FieldGroup #ProductGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : identifier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Availability',
                Value : availability,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency',
                Value : currency_code,
            },
        ],
    },
    UI.Facets                                : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'ProductGeneralInformation',
        Label  : 'Product General Information',
        Target : '@UI.FieldGroup#ProductGeneralInformation',
    }]
);
