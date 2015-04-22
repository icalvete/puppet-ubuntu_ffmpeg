# puppet-ubuntu_ffmpeg

Puppet manifest to install deprecated ffmpeg in ubuntu 14.04  (Trusty Tahr)

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

##Authors:

Israel Calvete Talavera <icalvete@gmail.com>
