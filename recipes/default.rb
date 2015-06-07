%w( install configure ).each do |r|
  include_recipe "#{cookbook_name}::#{r}"
end

include_recipe "#{cookbook_name}::service_#{node['kibana']['service_type']}"
