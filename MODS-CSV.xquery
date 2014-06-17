xquery version "3.0";
 
(: Zotero MODS export to CSV :)

(: Title ($title)
   Publisher ($pub)
   Year Published ($date)
   Volume ($vol)
   Issue ($iss)
   Page(s) ($page)
   AuthorID (LastName) ($autLast)
   Abstract ($abst) :)


declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
declare namespace mods="http://www.loc.gov/mods/v3";
 
let $doc := fn:doc("/db/Law/Bibliography/NewClearedList-MODS.xml")
let $modsCollection := $doc/mods:modsCollection/mods:mods

for $mods in $modsCollection
let $title := $mods/mods:titleInfo[1]/mods:title/text()
let $pub := $mods/mods:relatedItem/mods:titleInfo/mods:title
let $date := $mods/mods:relatedItem/mods:originInfo/mods:dateIssued
let $vol := $mods/mods:relatedItem/mods:part/mods:detail[@type="volume"]/mods:number
let $iss := $mods/mods:relatedItem/mods:part/mods:detail[@type="issue"]/mods:number
let $page := $mods/mods:relatedItem/mods:part/mods:extent/mods:start
let $autLast := $mods/mods:name/mods:namePart[@type="family"]/text()
let $abst := $mods/mods:abstract
 

return 
fn:string-join(($title, $pub, $date, $vol, $iss, $page, $autLast, $abst), ', ')

