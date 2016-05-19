package 'unzip'
package 'curl'

case node['platform_family']
when 'debian', 'rhel'
  installer_url = node['dnvm']['installer_url']['linux']
when 'windows'
  installer_url = node['dnvm']['installer_url']['windows']
end

dnvm_install 'dnvm' do
  username node['dnvm']['user']
  installer_url installer_url
end

