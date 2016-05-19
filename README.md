# DNVM
Manages per-user DNVMs

# Usage
## Recipes
Use the `dnvm` recipe to install DNVM for a given user.
Alternatively you can use the [dnvm_install] resource (see below)

## Attributes
 * `node['dvnm']['user']`: User to install dnvm for. Will default to the resource name
 * `node['dnvm']['installer_url']['linux']`: Installation script URL for linux
 * `node['dnvm']['installer_url']['windows']`: Installation script URL for Windows

## Resources
### dnvm_installer
Installs DNVM for a given user. Usage:
```ruby
dnvm_resource 'dnvm' do
  username 'my_user' # Will default to the resource name
  installer_url 'https://someurl.example.com/dnvm_install.sh' # Optional
end
```

## Platform
This cookbook has currently only been tested on Ubuntu.
However it should work fine on any linux system that supports dnvm

It doesn't (yet) work on windows
