require_relative 'spec_helper'

describe file('/home/kitchen/.dnx/dnvm/dnvm.sh') do
  it { should exist }
  it { should be_mode '644' }
  it { should be_owned_by 'kitchen' }
end

describe command('dnvm version') do
  #let(:sudo_options) { '-u kitchen_user -i' }
  its(:exit_status) { is_expected.to eq 0 }
end
