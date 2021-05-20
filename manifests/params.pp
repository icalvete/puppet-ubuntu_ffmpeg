class ubuntu_ffmpeg::params {

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {
      case $::lsbdistcodename {
        'trusty': {
          $ppa = 'ppa:mc3man/trusty-media'
        }
        'xenial': {
          #$ppa = 'ppa:mc3man/ffmpeg-test'
          $ppa = 'ppa:jonathonf/ffmpeg-3'
        }
        'bionic': {
          $ppa = undef
        }
        'focal': {
          $ppa = undef
        }
        default: {
          fail ("${::lsbdistcodename} not supported.")
        }
      }
    }
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
