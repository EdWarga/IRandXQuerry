xquery version "3.0";

declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
declare namespace mods="http://www.loc.gov/mods/v3";

let $doc := fn:doc("/db/Divinity/MODS-JournalArticles-2014-05-21.xml")
let $modsCollection := $doc/mods:modsCollection/mods:mods


let $journal := $modsCollection/mods:relatedItem/mods:titleInfo[fn:not(@type)]/mods:title/text()
for $titles in  fn:distinct-values($journal)
let $count := fn:count($journal [. = $titles])
return fn:string-join(($titles, $count), ', ')


(:
I found the FLOWR statement here - http://stackoverflow.com/questions/15122641/count-number-of-word-occurrences-in-strings-using-xquery
It seems to work. I understand the logic behind it, but the construction doesn't make 100% sense to me. 
:)
(:
fn:string-join)(($titles, $count), ', ')
fn:distinct-values($journal) 
:)