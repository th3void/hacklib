#-----------------------------------------------------------------------#
#                                                                       #
#                                                                       #
#                         HACKLIB                                       #
#                        By TH3V0ID                                     #
#                                                                       #
#                                                                       #
#-----------------------------------------------------------------------#
# Copyright (c) 2020 - 2022 Th3Void <https://github.com/th3void>        #
#                                                                       #
# This program is free software; you can redistribute it and/or         #
# modify it under the terms of the GNU General Public                   #
# License as published by the Free Software Foundation; either          #
# version 3 of the License, or (at your option) any later version.      #  
#                                                                       #
# This program is distributed in the hope that it will be useful,       # 
# but WITHOUT ANY WARRANTY; without even the implied warranty of        #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU     #   
# General Public License for more details.                              #
#                                                                       #
# You should have received a copy of the GNU General Public             #
# License along with this program; if not, write to the                 #
# Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,      #  
# Boston, MA 02110-1301 USA                                             #
#                                                                       #
#-----------------------------------------------------------------------#        

require_relative "./names.rb"

module Hacklib

    # Get time
    def hacklib_get_time 
        Time.now.strftime("%d.%m.%Y_%H::%M")
    end # @hacklib_get_time

	# Alias for system
	def sys(command, log = false)   
        if log == true ? shell_code = "echo '#{get_time()} :: #{command}' >> ./command_log.log" : nil
		system(command)
	end # @sys

    # Generate strings with colors
    def hacklib_color_compose(color, string)
        case color
        when 'red'
            print "\033[91m #{string}\033[00m" #Red
        when 'green'
            print "\033[92m #{string}\033[00m" #Green
        when 'yellow'
            print "\033[93m #{string}\033[00m" #Yellow
        when 'lightpurple'
            print "\033[94m #{string}\033[00m" #LightPurple
        when 'purple'
            print "\033[95m #{string}\033[00m" #Purple
        when 'cyan'
            print "\033[96m #{string}\033[00m" #Cyan
        when 'lightgray'
            print "\033[97m #{string}\033[00m" #LightGray
        when 'black'
            print "\033[98m #{string}\033[00m" #Black
        else 
            print "[ERROR]: color_not_found in @hacklib_color_compose hacklib"
        end
    end # @hacklib_color_compose
    
    # Menssage window manager
    def hacklib_mensager_handler(message)
        
    end # @hacklib_mensager_handler

    # Determine the system package manager
    def hacklib_system_detector
        exit_to_null = '/dev/null'
        if sys("man apt #{exit_to_null}") == true
            return 'APT'
        elsif sys("man dnf #{exit_to_null}") == true
            return 'DNF'
        elsif sys("man pacman #{exit_to_null}") == true
            return 'PAC'
        else 
            puts "[ERROR]: Unknown command or system in @hacklib_system_detector hacklib"
            return 'FAL'
        end
    end # @hacklib_system_detector

    # Install additional packages
    def hacklib_package_installer
        pkg_list = ''
        string0 = "apt update && apt install #{pkg_list} -y"
        string1 = "sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
        https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y \
        && dnf mackcache && dnf install #{pkg_list}"
        string2 = "pacman -Syu #{pkg_list}"
        pkg_manager = hacklib_system_detector()
        case pkg_manager
        when 'APT'
            sys(string0)
            puts "[ERROR]: Packages not installed correctly in @hacklib_package_installer APT "
        when 'DNF'
            sys(string1)
            puts "[ERROR]: Packages not installed correctly in @hacklib_package_installer DNF "
        when 'PAC'
            sys(string2)
            puts "[ERROR]: Packages not installed correctly in @hacklib_package_installer PACMAN "
        else
            return nil
            puts "[ERROR]: Your system is not compatible with this feature at @hacklib_package_installer hacklib"
        end
    end # @hacklib_package_installer

    # Drop by zynix_fussion module dir scanner
    def hacklib_dir_scanner(custom = false, silent = '', output = '', extension = '', delay = '', target_dns)
        if custom == true
            flags = "-i -w #{silent} #{output} #{extension} -z #{delay}"
            sys("dirb #{target_dns} ./wordlist/directory_list.txt #{flags}")
        else  
            sys("dirb -i -w -S #{target_dns} ./wordlist/directory_list.txt")
        end 
    end # @hacklib_dir_scanner

    # Drop by zynix_fussion module dns_scanner
    def hacklib_dns_enumerator(target_dns)
        sys("dnsenum --enum #{target} ./wordlist/dns.txt") 
        reg_dns = ['A', 'AAAA', 'CNAME', 'MX', 'NS', 'PTR', 'SOA']
        for reg in reg_dns
            puts "[+] :: Search for #{reg} in #{target_dns}:"
            sys("host -t #{reg} #{target_dns}")
        end
    end # @hacklib_dns_enumerator
   
    # Drop by zynix_fussion module web vul scanner
    def hacklib_simple_domain_osint(target_dns, target_ip)
        hacklib_color_compose('yellow', "[+] :: Get robots.txt")
            sys("wget https://www.#{target_dns}/robots.txt")
        hacklib_color_compose('yellow', "[+] :: Get robots.txt")
            sys("wget https://www.#{target_dns}/sitemap.xml")
        hacklib_color_compose('yellow', "[+] :: WHOIS")
            sys("whois -a #{target_dns}")
        hacklib_color_compose('yellow', "[+] :: Email Enumeration")
            sys("theharvester -d #{target_dns} -l 500 -b all")
        hacklib_color_compose('yellow', "[+] :: HTTP Banner grep at ~/outputs")
            sys("ncat -v #{target_ip} 80 >> ~/banner_port_80_#{target_ip}_.html")
        hacklib_color_compose('yellow', "[+] :: HTTPS Banner grep")
            sys("openssl s_client -quiet -connect #{target_dns}:443 >> ~/banner_port_443_#{target_ip}_.html")
        hacklib_color_compose('yellow', "[+] :: Nikto scanner")
            sys("nikto -h #{target_ip}:443 -ssl")
    end # @hacklib_simple_domain_osint

    # Drop by zynix_fussion module maclookup
    def hacklib_maclookup(vendor, path_db)
        table = CSV.parse(File.read(db), headers: true)
        i = 0
        for x in table 
            if table[i][0] = vendor
                return table[i]
            else
                i = i+1 #yep
            end
        end
    end # @hacklib_maclookup

    # Drop by zynix_fussion module bluetooth
    def hacklib_bluetooth_attacker(mac, times)
        sys("bt-device -c #{target}")
    end # @hacklib_bluetooth_attacker

    # Drop by zynix_fussion module rg_generator
    def hacklib_fake_rg_generator
        i = 0; count = 0;
        string = rand(10..90).to_s + '.'
        while i < 6
            rd = rand(0..9)
            string = string + rd.to_s
            if i == 2
                string = string + '.'
            end
            i = i+1
        end
        return string + '.' + rand(1..9).to_s
    end # @hacklib_fake_rg_generator

    # Drop by zynix_fussion module Brazil cpf_generator
    def hacklib_fake_cpf_generator 
        value = 0; total = 0; value_segundo = 0; total_segundo = 0
        digito_1 = [10,9,8,7,6,5,4,3,2]
        cpf = Array.new(9) {| i | i = rand(10)}
        9.times do |val|
            total = digito_1[val] * cpf[val]
            value += total
        end
        primeiro_digito = value%11
        if primeiro_digito < 2
            primeiro_digito = 0
        else
            primeiro_digito = 11 - primeiro_digito
        end
        digito_1.push(11).sort!.reverse!
        cpf.push(primeiro_digito)
        10.times do |value|
            total_segundo = digito_1[value] * cpf[value]
            value_segundo += total_segundo
        end
        segundo_digito = value_segundo%11
        if segundo_digito < 2
            segundo_digito = 0
        else
            segundo_digito = 11 - segundo_digito
        end
        cpf.pop
        cpf = "#{cpf.join("")}#{primeiro_digito}#{segundo_digito}"
        return cpf
    end # @hacklib_fake_cpf_generator

    # Drop by zynix_fussion module name_generator
    def hacklib_fake_name_generator(sex)
        # Select first name
        sex == 'm' ? first_name = $men[rand(0..$men.length)] : first_name = $wom[rand(0..$wom.length)]
        # Select middle name
        middle_name = $middle[rand(0..$middle.length)]
        # Select second middle name
        random_number = rand(0..10)
        random_number < 6 ? second_middle_name = $middle[rand(0..$middle.length)] : second_middle_name = nil
        # Select fine name
        final_name = rand(0..10)
        final_name < 9 ? final_name = $final[rand(0..$final.length)] : final_name = nil
        # Return the name
        return "#{first_name} #{middle_name} #{second_middle_name} #{final_name}"
    end # @hacklib_fake_name_generator

    # Drop by zynix_fussion module idhash
    def hacklib_fake_databse_primary_key(string)
        key = '23942849023423480392948394032984230489'
        digest = OpenSSL::Digest.new('sha256')
        return OpenSSL::HMAC.hexdigest(digest, key, string)
    end # @hacklib_fake_databse_primary_key
    
    # Drop by zynix_fussion module fake_db
    def hacklib_fake_database_dump(type, size, path, filename)
        count = 0
        while count < size
            primary_key = hacklib_fake_databse_primary_key()
            data = "#{rand(1999..2021)}/#{rand(1..12)}/#{0..30}"
            time = "#{0..23}-#{0..59}-#{0..59}"
            cpf_generator = hacklib_fake_cpf_generator()
            rg_generator = hacklib_fake_rg_generator()
            name_generator = hacklib_fake_name_generator()
            case type
            when 'json'
                egg = "{\"id\": \"#{primary_key}\", \"id\": \"#{data}\", \"id\": \"#{time}\", \"id\": \"#{cpf_generator}\", \"id\": \"#{rg_generator}\", \"id\": \"#{name_generator}\",}"
                print(egg)
                sys("echo '#{egg},' >> #{path}/#{filename}")
            when 'text'
                egg = "#{primary_key} : #{data} : #{time} : #{cpf_generator} : #{rg_generator} : #{name_generator}"
                sys("echo '#{egg}' >> #{path}/#{filename}")
            when 'sqlite'
                puts "unk :("
            else 
                puts "[ERROR]: type not recognized at @hacklib_fake_database_dump"
            end
        end
    end # @hacklib_fake_database_dump

    def hacklib_file_manager
    end

end # module hacklib