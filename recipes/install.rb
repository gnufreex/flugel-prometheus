# Cookbook Name:: chef-grafana
# Recipe:: default

# The http apt method isn't always installed by default, and we have a https
# repository. Make sure it's installed.

yum_repository 'grafana' do
  description "grafana repo"
  baseurl "https://packagecloud.io/grafana/stable/el/7/$basearch"
  gpgkey 'https://packagecloud.io/gpg.key https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana'
  action :create
end

package 'grafana' do
  action :upgrade
  notifies :restart, 'service[grafana-server]'
end

service 'grafana-server' do
  action [:enable, :start]
end
