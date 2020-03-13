class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.eproseedgt.com':}
  dockeragent::node{'db.eproseedgt.com':}
  host {'web.eproseedgt.com':
    ensure => present,
    ip     => '172.18.0.2'
  }
  host {'db.eproseedgt.com':
    ensure => present,
    ip     => '172.18.0.3'
  }
}
