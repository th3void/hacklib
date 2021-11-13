module hacklib

    # Get time
    def get_time 
        Time.now.strftime("%d.%m.%Y_%H::%M")
    end

    # Get value and show text
    def set(msg = nil)
        msg == nil ? var = gets.chomp.to_s : print(msg + ' '); return true  
    end

	# Alias for system
	def sys(command, log = false)   
        if log == true ? shell_code = "echo '#{get_time()} :: #{command}' >> ./command_log.log" : nil
        end
		system(command)
	end

    def hacklib_system_detector
        exit_to_null = '/dev/null'
        if sys("man apt #{exit_to_null}") == true
            return 'APT'
        elsif sys("man dnf #{exit_to_null}") == true
            return 'DNF'
        elsif sys("man pacman #{exit_to_null}") == true
            return 'PAC'
        else 
            return 'FAL'
        end
    end

    def hacklib_package_installer
        PKG_LIST = ''
        string0 = "apt update && apt install #{PKG_LIST} -y"
        string1 = "sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
        https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y \
        && dnf mackcache && dnf install #{PKG_LIST}"
        string2 = "pacman -Syu #{PKG_LIST}"
        pkg_manager = hacklib_system_detector()
        case pkg_manager
        when 'APT'
            sys(string0)
        when 'DNF'
            sys(string1)
        when 'PAC'
            sys(string2)
        else
            return nil
        end
    end



end # module
    
    

        