.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "\nDEPRECATION WARNING: `site_masked` will be removed on 2027-01-01!\n",
    "Please use updated `site` dataset instead."
  )
}