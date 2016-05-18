require_relative 'spec_helper'

describe command('dnvm version') do
  #let(:sudo_options) { '-u kitchen_user -i' }
  its(:exit_status) { is_expected.to eq 0 }
end
