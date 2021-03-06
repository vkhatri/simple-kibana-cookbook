default['kibana']['version'] = '4.0.2'
default['kibana']['download_url'] = "https://download.elasticsearch.org/kibana/kibana/kibana-#{node['kibana']['version']}-linux-x64.tar.gz"
default['kibana']['checksum'] = '4cc36e5c6ca7c495667319df75feda1facb7c43a3d9686841f07a2522adec294'

default['kibana']['user'] = 'kibana'
default['kibana']['group'] = 'kibana'
default['kibana']['dir'] = '/opt'
default['kibana']['conf_file'] = ::File.join(node['kibana']['dir'], 'kibana', 'config', 'kibana.yml')

default['kibana']['path']['logs'] = '/var/log/kibana'

default['kibana']['service_type'] = 'runit' # options: runit sysv
default['kibana']['notify_restart'] = true
default['kibana']['setup_user'] = true

default['kibana']['config'] = {}
