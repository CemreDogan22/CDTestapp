using { slah.db as slah } from '../db/interactions';

service CatalogService {

    @odata.draft.enabled
    entity Main as projection on slah.Mainentitiy {
        *,
        case
            when element1.code = 1 then false //1 = Yes -> Hidden = false 
            when element1.code = 0 then true //0 = No -> Hidden = true
        end as testbool:Boolean,
    };
}