using { slah.db as slah } from '../db/interactions';

service CatalogService {

    @odata.draft.enabled
    entity Main as projection on slah.Mainentitiy;
}