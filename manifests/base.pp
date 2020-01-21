class profile::base(
  $ntp_servers = [
    '0.debian.pool.ntp.org',
    '1.debian.pool.ntp.org', 
  ],
) {
  include ::ssh
  class {'::ntp': 
    servers => $ntp_servers,
  }
}
