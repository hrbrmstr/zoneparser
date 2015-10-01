#' Parse a Domain Name System (DNS) zone file
#'
#' @param path path to DNS zone file to parse
#' @return \code{list} with DNS zone parsed
#' @export
#' @examples
#' parse_zone(system.file("zones/20151001-wtf-zone-data.txt", package="zoneparser"))
parse_zone <- function(path) {
  ct$call("zonefile.parse", paste(readLines(path), collapse="\n"))
}

.onAttach <- function(libname, pkgname) {

  ct <<- V8::new_context()
  ct$source(system.file("js/zoneparser.js", package="zoneparser"))

}
