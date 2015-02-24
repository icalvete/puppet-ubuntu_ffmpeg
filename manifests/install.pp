class ubuntu_ffmpeg::install {

  package { 'software-properties-common':
    ensure  => present
  }

  exec { 'adding_ppa_ffmpeg_repo':
    command  => "add-apt-repository 'deb  http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu trusty main' && sudo add-apt-repository 'deb http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu saucy main'",
    user     => 'root',
    provider => 'shell',
    require  => Package['software-properties-common'],
    unless   => '/bin/grep jon-severinsson /etc/apt/sources.list'
  }

  exec { 'adding_ppa_ffmpeg_repo_key':
    command  => 'apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1DB8ADC1CFCA9579',
    user     => 'root',
    provider => 'shell',
    notify   => Exec['updating_list_from_ppa_ffmpeg_repo'],
    require  => Exec['adding_ppa_ffmpeg_repo'],
    unless   => '/usr/bin/apt-key list | /bin/grep CA9579'
  }

  exec { 'updating_list_from_ppa_ffmpeg_repo':
    command     => 'apt-get update',
    user        => 'root',
    provider    => 'shell',
    refreshonly => true
  }

  package { 'ffmpeg':
    ensure  => present,
    require => Exec['adding_ppa_ffmpeg_repo', 'adding_ppa_ffmpeg_repo_key', 'updating_list_from_ppa_ffmpeg_repo']
  }
}
