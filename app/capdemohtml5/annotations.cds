using OfficeSuppliesService as service from '../../srv/officesupplies-service';

annotate service.Suppliers with @(
    UI.LineItem                             : [
        {
            $Type : 'UI.DataField',
            Label : 'identifier',
            Value : identifier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'building',
            Value : building,
        },
        {
            $Type : 'UI.DataField',
            Label : 'street',
            Value : street,
        },
    ],
    HeaderInfo                              : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'Supplier',
        TypeNamePlural : 'Suppliers',
        Title          : {
            Label : 'Supplier Id',
            Value : identifier
        },
        Description    : {
            Label : 'Supplier Description',
            Value : name
        }
    },
    Identification                          : [ //Is the main field group
        {
            Value : identifier,
            Label : 'Supplier Id'
        },
        {
            Value : name,
            Label : 'Supplier Description'
        }
    ],
    HeaderFacets                            : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Created}',
        Target : '@UI.FieldGroup#SupplierInfo'
    }],

    FieldGroup #SupplierInfo                : {Data : [
        {Value : identifier},
        {Value : name},
    ]},
    FieldGroup #Modified                    : {Data : [
        {Value : modifiedBy},
        {Value : modifiedAt},
    ]},

    UI.FieldGroup #HeaderGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'identifier',
                Value : identifier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'building',
                Value : building,
            },
            {
                $Type : 'UI.DataField',
                Label : 'street',
                Value : street,
            },
            {
                $Type : 'UI.DataField',
                Label : 'postCode',
                Value : postCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
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
            Label  : 'Product Details',
            Target : 'products/@UI.LineItem',

        }
    ]
);

annotate service.Products with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'identifier',
        Value : identifier,
    },
    {
        $Type : 'UI.DataField',
        Label : 'title',
        Value : title,
    },
    {
        $Type : 'UI.DataField',
        Label : 'description',
        Value : description,
    },
    {
        $Type : 'UI.DataField',
        Label : 'availability',
        Value : availability,
    },
    {
        $Type : 'UI.DataField',
        Label : 'price',
        Value : price,
    },

], ) {
    @Measures.ISOCurrency : currency.code
    price
};
