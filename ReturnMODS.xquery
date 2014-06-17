xquery version "3.0";
 
declare namespace xsi = "http://www.w3.org/2001/XMLSchema-instance";
declare namespace mods = "http://www.loc.gov/mods/v3";
declare namespace oai = "http://www.openarchives.org/OAI/2.0/";
declare namespace mets = "http://www.loc.gov/METS/";


let $oai := fn:doc("/db/Law/LawFacultyMets_2014-02-19.xml")
let $mets := $oai/oai:OAI-PMH/oai:ListRecords/oai:record/oai:metadata/mets:mets
let $mods := $mets/mets:dmdSec/mets:mdWrap/mets:xmlData/mods:mods

return $mods

