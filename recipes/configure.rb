
file node['kibana']['conf_file'] do
  content YAML.dump(node['kibana']['config'].to_hash)
  owner node['kibana']['user']
  group node['kibana']['gorup']
  mode '0755'
end
