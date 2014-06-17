xquery version "3.0";

declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
declare namespace dri="http://di.tamu.edu/DRI/1.0/";

let $collection := fn:collection("/db/Law/Downloads/StatFiles_May")

for $xmlFile in $collection
let $fileName := $xmlFile/dri:document/dri:body[1]/dri:div[1]/dri:div[1]/dri:table[2]/dri:row[2]/dri:cell[1]/text()
let $fileViews := $xmlFile/dri:document/dri:body[1]/dri:div[1]/dri:div[1]/dri:table[2]/dri:row[2]/dri:cell[2]/text()


return 
fn:string-join(($fileName, $fileViews), ', ')

