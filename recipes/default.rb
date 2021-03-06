include_recipe 'flugel-grafana-prometheus::install'
include_recipe 'flugel-grafana-prometheus::configure'
include_recipe 'flugel-grafana-prometheus::default_dashboards'


group 'prometheus'

user 'prometheus' do
  group 'prometheus'
  system true
  shell '/bin/false'
end


include_recipe 'prometheus::service'
include_recipe 'prometheus::binary'
include_recipe 'prometheus::default'


include_recipe 'nginx::default'


