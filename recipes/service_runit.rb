include_recipe 'runit'

runit_service 'kibana' do
  default_logger true
  options(
    'user' => node['kibana']['user'],
    'home' => ::File.join(node['kibana']['dir'], 'kibana')
  )
  subscribes :restart, "file[#{node['kibana']['conf_file']}]"
  subscribes :restart, 'ark[kibana]'

  action [:enable, :start]
end
