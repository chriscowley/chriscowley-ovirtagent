require 'spec_helper'

describe 'ovirtagent' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "ovirtagent class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('ovirtagent::params') }
        it { should contain_class('ovirtagent::install').that_comes_before('ovirtagent::config') }
        it { should contain_class('ovirtagent::config') }
        it { should contain_class('ovirtagent::service').that_subscribes_to('ovirtagent::config') }

        it { should contain_service('ovirt-guest-agent') }
        it { should contain_package('ovirt-guest-agent').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'ovirtagent class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('ovirtagent') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
