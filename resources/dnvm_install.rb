resource_name :dnvm_install

case node['platform_family']
when 'debian', 'rhel'
  installer_url = node['dnvm']['installer_url']['linux']
when 'windows'
  installer_url = node['dnvm']['installer_url']['windows']
end

property :user, String, name_property: true
property :installer_url, String, default: installer_url

default_action :install

installer_path = ::File.join Chef::Config['file_cache_path'], 'dnvm_installer'

action :install do
  remote_file 'installer' do
    source installer_url
    path installer_path
    user user
    mode '744'
  end

  case node['platform_family']
  when 'debian', 'rhel'
    execute 'install_dnvm' do
      command "bash -c #{installer_path}"
      user user
      creates ::File.join(Dir.home, '.dnx', 'dnvm', 'dnvm.sh')
    end
  when 'windows'
    fail "Windows not supported yet"
  end
end
