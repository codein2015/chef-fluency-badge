

hostname = node['hostname']
file '/etc/motd' do
	action :create
	content "Welcome to Node: #{hostname}"
end
