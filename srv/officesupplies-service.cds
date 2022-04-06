using {officesupplies.db as db} from '../db/schema';

service OfficeSuppliesService{
    entity Products as projection on db.Products;

    entity Suppliers @(odata.draft.enabled: true) as projection on db.Suppliers;

}