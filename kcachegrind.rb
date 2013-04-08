class KcachegrindCommand < Vagrant::Command::Base
    def execute
        options = {}
        
        opts = OptionParser.new do |opt|
          opt.banner = "Usage: vagrant kcachegrind [vm-name]"
          opt.on('--verbose') do |v|
            options[:verbose] = true
          end
        end

        argv = parse_options(opts)

        unless argv
          argv=["default"]
        end
        
        with_target_vms(argv) do |vm|
            puts vm.name
        
            ssh_info  = vm.ssh.info

            ssh_options = "-p#{ssh_info[:port]} -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no -oPasswordAuthentication=no -oIdentitiesOnly=yes -i#{ssh_info[:private_key_path]}"
            ssh_host    = "#{ssh_info[:username]}@#{ssh_info[:host]}"

            command = 'ssh -X %s %s "/usr/bin/kcachegrind"&' % [ssh_options, ssh_host]
            puts command if options[:verbose]

            Vagrant::Util::Subprocess.execute(command)
          end
    end
end

Vagrant.commands.register(:kcachegrind) { KcachegrindCommand }

