using {officesupplies.db as db} from '../db/schema';

service OfficeSuppliesService{

    entity Suppliers @(odata.draft.enabled: true) as projection on db.Suppliers{
        *,
        products: redirected to Products
    };

    entity Products as projection on db.Products;

}