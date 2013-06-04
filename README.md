INSTALL
-------

Follow these steps to setup Hakyll on the Vagrant virtual machine.

1. `vagrant up`
2. `vagrant ssh`
3. `cabal update`
4. `cabal install hakyll`

BUILD
-----

1. `cd /vagrant/hakyll`
2. `ghc --make site.hs`
3. `./site build`

PREVIEW
-------

- `./site preview`
- Browse to 10.1.1.200:8000 on your web browser from your host computer.

TODO
----

- It would be nice to have Puppet setup cabal and hakyll automatically.
