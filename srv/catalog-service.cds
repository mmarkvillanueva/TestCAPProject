using {TestCAPProject.db as db} from '../db/data-model';

service CatalogService @(path : '/catalog')
{
    entity Sales
      as select * from db.Sales
      actions {
        action boost() returns Sales;
      }
    ;

  entity Users as projection on db.Users;

  entity Actions as projection on db.Actions;

};