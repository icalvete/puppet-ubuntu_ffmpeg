class ubuntu_ffmpeg (

  $ppa = $ubuntu_ffmpeg::params::ppa

) inherits ubuntu_ffmpeg::params {

  anchor {'ubuntu_ffmpeg::begin':
    before => Class['ubuntu_ffmpeg::install']
  }
  class {'ubuntu_ffmpeg::install':
    require => Anchor['ubuntu_ffmpeg::begin']
  }
  anchor {'ubuntu_ffmpeg::end':
    require => Class['ubuntu_ffmpeg::install']
  }
}
