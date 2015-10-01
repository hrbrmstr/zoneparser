<!-- README.md is generated from README.Rmd. Please edit that file -->
Made with <img src="v8.png"/>

zoneparser is a very small package that parses full Domain Name System (DNS) zone files into their component parts. Uses code from the node.js [dns-zonefile](https://github.com/elgs/dns-zonefile) module.

The following functions are implemented:

-   `parse_zone`: Parse a DNS zone file into components

### News

-   Version 0.0.0.9999 released

### Installation

``` r
devtools::install_github("hrbrmstr/zoneparser")
```

### Usage

``` r
library(zoneparser)

# current verison
packageVersion("zoneparser")
#> [1] '0.0.0.9000'

print(str(parse_zone(system.file("zones/20151001-wtf-zone-data.txt", package="zoneparser"))))
#> List of 4
#>  $ soa :List of 9
#>   ..$ name   : chr "l7c3lmuonrrkgvpqg1hlv85n8flvocp3.wtf."
#>   ..$ minimum: NULL
#>   ..$ expire : NULL
#>   ..$ retry  : NULL
#>   ..$ refresh: NULL
#>   ..$ serial : NULL
#>   ..$ rname  : chr "dnskey"
#>   ..$ mname  : chr "l98034177c1klkto7k779spohmmrpffq"
#>   ..$ ttl    : int 86400
#>  $ ns  :'data.frame':    17710 obs. of  3 variables:
#>   ..$ name: chr [1:17710] "wtf." "wtf." "wtf." "wtf." ...
#>   ..$ host: chr [1:17710] "demand.beta.aridns.net.au." "demand.alpha.aridns.net.au." "demand.delta.aridns.net.au." "demand.gamma.aridns.net.au." ...
#>   ..$ ttl : int [1:17710] 86400 86400 86400 86400 86400 86400 86400 86400 86400 86400 ...
#>  $ a   :'data.frame':    119 obs. of  3 variables:
#>   ..$ name: chr [1:119] "ns.10111.wtf." "ns-backup.10111.wtf." "ns1.12345.wtf." "ns2.12345.wtf." ...
#>   ..$ ip  : chr [1:119] "148.251.48.89" "81.89.99.20" "103.246.19.157" "103.246.19.157" ...
#>   ..$ ttl : int [1:119] 86400 86400 86400 86400 86400 86400 86400 86400 86400 86400 ...
#>  $ aaaa:'data.frame':    10 obs. of  3 variables:
#>   ..$ name: chr [1:10] "ns1.nick235.wtf." "ns2.nick235.wtf." "ns3.nick235.wtf." "ns1.packet.wtf." ...
#>   ..$ ip  : chr [1:10] "2a02:4e8:4:2000::5e88:22c1" "2a02:4e8:4:2000::5e88:22c1" "2a02:4e8:4:2000::5e88:22c1" "2a01:7c8:aab0:2c3::2" ...
#>   ..$ ttl : int [1:10] 86400 86400 86400 86400 86400 86400 86400 86400 86400 86400
#> NULL
```

### Test Results

``` r
library(zoneparser)
library(testthat)

date()
#> [1] "Thu Oct  1 15:24:45 2015"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
#> 
#> DONE
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
