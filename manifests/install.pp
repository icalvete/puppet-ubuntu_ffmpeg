class ubuntu_ffmpeg::install {

  package { 'software-properties-common':
    ensure  => present
  }

  exec { 'adding_ppa_ffmpeg_repo':
    command  => "add-apt-repository -y ppa:mc3man/trusty-media",
    user     => 'root',
    provider => 'shell',
    notify   => Exec['updating_list_from_ppa_ffmpeg_repo'],
    require  => Package['software-properties-common'],
    unless   => '/bin/grep mc3man /etc/apt/sources.list'
  }

  exec { 'updating_list_from_ppa_ffmpeg_repo':
    command     => 'apt-get update',
    user        => 'root',
    provider    => 'shell',
    refreshonly => true
  }

  package { 'ffmpeg':
    ensure  => present,
    require => Exec['adding_ppa_ffmpeg_repo', 'updating_list_from_ppa_ffmpeg_repo']
  }
}
