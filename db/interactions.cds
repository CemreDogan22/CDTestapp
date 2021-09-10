namespace slah.db;

using { cuid, sap.common } from '@sap/cds/common';

entity Mainentitiy : cuid {
    element1 : Association to YesNo;
    element2 : String;
    element3 : String;
    element4 : Association to Options;
}

entity YesNo : CommonCodeList {}

entity Options : CommonCodeList {}

entity CommonCodeList : common.CodeList {
  key code : String(30);
}