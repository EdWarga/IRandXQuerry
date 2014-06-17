# XQuery & IRs
## Institutional Repository (IR)
* Open Access online collection of the university community's digital content. Aim at archiving faculty scholorship in an open access fashion as well as student work and community publications (e.g. newsletters, newspapers/magazines, podcasts, and other media).

* [DiscoverArchive](http://discoverarchive.vanderbilt.edu), Vanderbilt University's IR.

* Open Access
  * [Peter Suber's Overview](http://legacy.earlham.edu/~peters/fos/overview.htm)
  * [OASIS: Open Access Scholarly Information Sourcebook](www.openoasis.org/)
  * [Budhapest Open Access Inititative - BOAI](http://en.wikipedia.org/wiki/Budapest_Open_Access_Initiative)

 
## IR Workflow
* identify faculty scholarship (journal articles)
* collect bib records (normalize? metadata)
  * MS access; Zotero
* get permissions from copyright holder to deposit in IR
  * agree to terms in IR license
  * which version can we use - PrePrint, PostPrint, PublishedPDF
* collect and prepare content (articles)
* submit content we have permissions for to IR
* catalogers review, edit, and accept submissions
* mint handle (persistent URI to item page in IR)
* add handle and add bitstream URL to bib record
  * query IR metadata (SOLR?, OAI-PMH), extract this data, add to bib records
 
## Tracking Permissions
* track individual publications/articles
  * export MODS records from Zotero
    * example
* add permissions data to bib records (MODS+Permissions)
  * create namespace and element set to express permissions data if there are no suitable MODS elements
* Permissions data elements
  * -
  * -
  * -
  * -
* store bib records in eXist-db
* use database to track permissions for individual items
* use XQuery to query collection
  * view articles cleared for deposit
  * other administrative views 


## Bibliography Service
* artifact of IR workflow is collection of faculty bibliographies (see bib records above)
* use XQuery to transform bib records
  * what form do I need to put the bibliographies on the web?
  * library website
  * vanderbilt faculty website
  * give to faculty for use on personal site
  * what else?
* transform to document - PDF?

## IR Administration
* produce metadata for ingest from bib records
  * csv for batch import
* pull XML data about existing content items in IR
  * OAI-PMH
    * METS example
  * scrape repository pages (download stats)
    * download count example
  * SOLR?
* use XQuery to compile information about them
  * usage report example
* metadata quality
* parse data from existing items and add to bib records
* can I do what I need to with the IR's XML data, or do I still need to access data from postgres occasionaly? -or- even with the NoSQL toolbox, I still need SQL
