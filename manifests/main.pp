file { '/etc/motd.tail':
  content => "===================================================================
This VM hosts the default haskell-vagrant.local development website.
Designed specifically for quickly developing Haskell based products.

For help with this VM please contact dave@upgradeya.com.
===================================================================
"
}

# make sure the packages are up to date before beginning
exec { "apt-get update":
  command => "/usr/bin/apt-get update",
}

# because puppet command are not run sequentially, ensure that packages are
# up to date before installing before installing packages, services, files, etc.
Exec["apt-get update"] -> Package <| |>

class haskell {
  package { "haskell-platform":
    ensure => latest,
  }
}

include haskell
