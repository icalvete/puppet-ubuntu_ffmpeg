# puppet-ubuntu_ffmpeg

Puppet manifest to:

* Install deprecated ffmpeg in ubuntu 14.04  (Trusty Tahr)
* Install ffmpeg version 3 in ubuntu 16.04  (Xenial Xerus)

[![Build Status](https://secure.travis-ci.org/icalvete/puppet-ubuntu_ffmpeg.png)](http://travis-ci.org/icalvete/puppet-ubuntu_ffmpeg)

## Instructions for manual instalation

```bash
$ apt-get install software-properties-common
$ add-apt-repository -y ppa:mc3man/trusty-media
$ apt-get update
$ apt-get install ffmpeg
```
## Instructions for puppet usage

Clone this git repo in your %modulepath and include the manifest in your node definition.

```puppet
node defaults {

  include ubuntu_ffmpeg
}
```

## Authors:

Israel Calvete Talavera <icalvete@gmail.com>
