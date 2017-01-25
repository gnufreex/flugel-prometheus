include_recipe 'flugel-grafana-prometheus::install'
include_recipe 'flugel-grafana-prometheus::configure'
include_recipe 'flugel-grafana-prometheus::default_dashboards'

include_recipe 'prometheus::binary'
include_recipe 'prometheus::default'

include_recipe 'prometheus::service' 

include_recipe 'nginx::default'


