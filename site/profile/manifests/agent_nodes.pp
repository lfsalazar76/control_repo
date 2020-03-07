class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.eproseedgt.com':}
  dockeragent::node{'db.eproseedgt.com':}
}
