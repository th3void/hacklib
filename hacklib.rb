module hacklib

    def hackelib_live_debug
    end

    def hacklib_system_detector
        exit_to_null = '/dev/null'
        if system("man apt #{exit_to_null}") == true
            return 'APT'
        elsif system("man dnf #{exit_to_null}") == true
            return 'DNF'
        elsif system("man pacman #{exit_to_null}") == true
            return 'PAC'
        else 
            return nil
        end
    end

    def hacklib_package_manager(option)
         
        