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

$wom = ['Alice', 'Júlia', 'Isabella', 'Manuela', 'Maria', 'Eduarda', 'Lara', 'Lorena', 'Yasmin', 'Nicole', 'Cecília', 'Emanuelly', 'Clara', 'Rebeca', 'Maria', 'Catarina', 'Valentina', 'Beatriz', 'Lara', 'Júlia', 'Heloísa', 'Lívia', 'Bianca', 'Ana', 'Lorena', 'Isadora', 'Yasmin', 'Bárbara', 'Abigail', 'Maria', 'Bruna', 'Nicole', 'Mariana', 'Sara', 'Olívia', 'Laila', 'Rebeca', 'Cloe', 'Ariela', 'Catarina', 'Micaela', 'Fernanda', 'Emanuela', 'Eva', 'Yara', 'Juliana', 'Ingrid', 'Angelina', 'Milene', 'Adriana', 'Sofia', 'Isabella', 'Camila', 'Valentina', 'Valeria', 'Mariana', 'Luciana', 'Daniela', 'Gabriela', 'Victoria', 'Martina', 'Lucia', 'Ximena/Jimena', 'Sara', 'Samantha', 'Maria José', 'Emma', 'Catalina', 'Julieta', 'Mía', 'Antonella', 'Renata', 'Emilia', 'Natalia', 'Zoe', 'Nicole', 'Paula', 'Amanda', 'María Fernanda', 'Emily', 'Antonia', 'Alejandra', 'Juana', 'Andrea', 'Manuela', 'Ana Sofia', 'Guadalupe', 'Agustina', 'Elena', 'María', 'Bianca', 'Ariana', 'Ivanna', 'Abril', 'Florencia', 'Carolina', 'Maite', 'Rafaela', 'Regina', 'Adriana', 'Michelle', 'Alma', 'Violeta', 'Salomé', 'Abigail', 'Juliana', 'Valery', 'Isabel', 'Montserrat', 'Allison', 'Jazmín', 'Julia', 'Lola', 'Luna', 'Ana', 'Delfina', 'Alessandra', 'Ashley', 'Olivia', 'Constanza', 'Paulina', 'Rebeca', 'Carla', 'María Paula', 'Micaela', 'Fabiana', 'Miranda', 'Josefina', 'Laura', 'Alexa', 'María Alejandra', 'Luana', 'Fátima', 'Sara Sofía', 'Isidora', 'Malena', 'Romina', 'Ana Paula', 'Mariangel', 'Amelia', 'Elizabeth', 'Aitana', 'Ariadna', 'María Camila', 'Irene', 'Silvana', 'Clara', 'Magdalena', 'Sophie', 'Josefa']

$men = ['Zoe', 'Davi', 'Pedro', 'Bernardo', 'Heitor', 'Samuel', 'Theo', 'Pietro', 'Benjamin', 'Lucca', 'Caio', 'João', 'Miguel','Francisco', 'Antônio', 'Enzo', 'Gabriel',' Davi', 'Lucca', 'Thiago', 'Thomas', 'Enrico', 'Artur', 'Enzo', 'Lorenzo', 'Theo', 'Gabriel', 'Guilherme', 'Pedro', 'Henrique', 'Nicolas', 'Rafael', 'Caio', 'Joaquim', 'Leonardo', 'Bruno', 'Vicente', 'Diego', 'Fernando', 'Kelvin', 'Renan', 'Francisco', 'Valentim', 'Manuel', 'Paulo', 'Santiago', 'Wilian', 'Abraão', 'Renato', 'Edgar', 'Juliano', 'Maurício', 'Caetano', 'Anderson', 'Santiago', 'Sebastián', 'Matías', 'Mateo', 'Nicolás', 'Alejandro', 'Diego', 'Samuel', 'Benjamín', 'Daniel', 'Joaquín', 'Lucas', 'Tomas', 'Gabriel', 'Martín', 'David', 'Emiliano', 'Jerónimo', 'Emmanuel', 'Agustín', 'Juan Pablo', 'Juan José', 'Andrés', 'Thiago', 'Leonardo', 'Felipe', 'Ángel', 'Maximiliano', 'Christopher', 'Juan Diego', 'Adrián', 'Pablo', 'Miguel Ángel', 'Rodrigo', 'Alexander', 'Ignacio', 'Emilio', 'Dylan', 'Bruno', 'Carlos', 'Vicente', 'Valentino', 'Santino', 'Julian', 'Juan Sebastián', 'Aarón', 'Lautaro', 'Axel', 'Fernando', 'Ian', 'Christian', 'Javier', 'Manuel', 'Luciano', 'Francisco', 'Juan David', 'Iker', 'Facundo', 'Rafael', 'Alex', 'Franco', 'Antonio', 'Luis', 'Isaac', 'Máximo', 'Pedro', 'Ricardo', 'Sergio', 'Eduardo', 'Bautista', 'Miguel', 'Cristóbal', 'Kevin', 'Jorge', 'Alonso', 'Anthony', 'Simón', 'Juan', 'Joshua', 'Diego Alejandro', 'Juan Manuel', 'Mario', 'Alan', 'Josué', 'Gael', 'Hugo', 'Matthew', 'Ivan', 'Damián', 'Lorenzo', 'Juan Martín', 'Esteban', 'Álvaro', 'Valentín', 'Dante', 'Jacobo', 'Jesus', 'Camilo', 'Juan Esteban', 'Elías']

$final = ['D’Ávila', 'da Aldeia', 'da Bandeira', 'da Barra', 'da Barranca', 'da Conceição', 'da Costa', 'da Cruz', 'da Cunha', 'da Fonseca', 'da Fontoura' 'da Fronteira', 'da Gama', 'da Luz', 'da Madureira', 'da Maia', 'da Mata', 'da Mota', 'da Nóbrega', 'da Paz', 'da Penha', 'da Rocha', 'da Rosa', 'da Silva', 'da Silveira', 'da Terra', 'da Veiga', 'Dantas', 'das Neves', 'Datena', 'de Assunção', 'de Borba', 'de Lara', 'de Lins', 'de Oliveira', 'de Quadros', 'de Sá', 'Dias', 'Dieckmann', 'Diegues', 'do Prado'] 

$middle = ['Abravanel', 'Albuquerque', 'Alencar', 'Almada', 'Álvares', 'Alves', 'Amoreira', 'Andrade', 'Annenberg', 'Antena', 'Antunes', 'Aparício', 'Arantes', 'Aroeira', 'Arriaga', 'Assumpção', 'Assunção', 'Banheira', 'Barata', 'Barcellos', 'Barcelos', 'Barreira', 'Barreto', 'Barroso', 'Bastos', 'Beltrão', 'Bentes', 'Bernardes', 'Bernardi', 'Bial', 'Bittencourt', 'Bittencourt', 'Boaventura', 'Bonfim', 'Bongiovanni', 'Bonner', 'Bouças', 'Brites', 'Brum', 'Bulhões', 'Cabreira', 'Cachoeira', 'Caldas', 'Caldeira', 'Camacho', 'Campos', 'Carneiro', 'Carreira', 'Carvalheira', 'Carvalho', 'Caseira', 'Casqueira', 'Castanheira', 'Castanho', 'Castelo', 'Castiel', 'Cerqueira', 'Chapelin', 'Chaves', 'Close', 'Coqueiro', 'Corte', 'Coutinho', 'Crespo', 'Dolabella', 'Domingues', 'Dorneles', 'dos', 'Reis', 'Drummond', 'Duarte', 'Duarte', 'Espinheira', 'Espinhosa', 'Esteves', 'Evelyn', 'Fagundes', 'Falabella', 'Fernandes', 'Ferraço', 'Ferrari', 'Ferraz', 'Ferreira', 'Figueira', 'Filgueira', 'Fischer', 'Fogaça', 'Fontenelle', 'Fontes', 'Fontinhas', 'Gabeira', 'Galego', 'Galvão', 'Ganzarolli', 'Garcês', 'Garcez', 'Gentil', 'Geraldes', 'Giácomo', 'Gimenez', 'Godinho', 'Godins', 'Gomes', 'Gomes', 'Gomide', 'Gonçalves', 'Goulart', 'Grotas', 'Guedes', 'Guterres', 'Henriques', 'Hermingues', 'Hernandes', 'Hickmann', 'Jaques', 'Junqueira', 'Kannenberg', 'Lafaiete', 'Lambertini', 'Laranjeira', 'Leiria', 'Lessa', 'Lessa', 'Liberato', 'Limeira', 'Lins', 'Lobos', 'Lombardi', 'Longuinho', 'Lopes', 'Louzada', 'Macieira', 'Madeira', 'Maldonado', 'Mangueira', 'Marcondes', 'Marinho', 'Marins', 'Marques', 'Marques', 'Martim', 'Martins', 'Matoso', 'Mazzaropi', 'Medeiros', 'Meira', 'Meireles', 'Mendanha', 'Mendes', 'Meneghel', 'Menendes', 'Modesto', 'Moniz', 'Monteira', 'Moraes', 'Monteiro', 'Monteiro', 'Montenegro', 'Moraes', 'Morais', 'Moreira', 'Moreno', 'Moscovis', 'Müller', 'Munhoz', 'Muniz', 'Muniz', 'Negrão', 'Nogueira', 'Noronha', 'Novaes', 'Nunes', 'Ordonhes', 'Ornelas', 'Ouriques', 'Paes', 'Palhares', 'Palmeira', 'Parreira', 'Passarinho', 'Pedroso', 'Peixoto', 'Pereira', 'Peres', 'Pimenta', 'Pinheira', 'Porteira', 'Porto', 'Quaresma', 'Quarteira', 'Raia',- 'Ramalho', 'Rameira', 'Ramires', 'Ramos', 'Rebouças', 'Rêgo', 'Regueira', 'Resende', 'Reymond', 'Rezende', 'Ribas', 'Ribas', 'Ribeira', 'Ribeiro', 'Riche', 'Rios', 'Rios', 'Rodrigues', 'Rolim', 'Roriz', 'Roriz', 'Roseira', 'Sais', 'Sales', 'Sampaio', 'Sanches', 'Sanches', 'Santana', 'Schmütz', 'Schoemberger', 'Schumacher', 'Sheherazade', 'Silveira', 'Silverstone', 'Simão', 'Simões', 'Siqueira', 'Siqueiro', 'Soares', 'Soeira', 'Solimões', 'Steves', 'Tavares', 'Taveira', 'Teixeira', 'Teles', 'Timberg', 'Torres', 'Trindade', 'Vargas', 'Vasconcelos', 'Vasques', 'Velasques', 'Veles', 'Vidal', 'Videira', 'Vieira', 'Vilela', 'Vimaranes', 'Vitti', 'Viveiros', 'Werneck', 'Ximenes']


module Hacklib

    # Get time
    def hacklib_get_time 
        Time.now.strftime("%d.%m.%Y_%H::%M")
    end # @hacklib_get_time

	# Alias for system
	def sys(command, log = false)   
        log == true ? shell_code = "echo '#{get_time()} :: #{command}' >> ./command_log.log" : nil
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

    # Compress and decompress files
    def hacklib_file_manager(file, operation, export = nil)

        msg0 = "[ERROR]: File extension fail at @hacklib_file_manager"
        msg1 = "[ERROR]: wrong input parameters at @hacklib_file_manager"
        case operation
        when 'extract tar'
            File.extname(file) == ".tar" ? sys("tar xf #{file}.tar") : hacklib_color_compose('cyan', msg0)
        when 'extract gz'
            File.extname(file) == ".gz" ? sys("tar xzf #{file}.tar.gz") : hacklib_color_compose('cyan', msg0)
        when 'extract bz2'
            File.extname(file) == ".bz2" ? sys("tar xjf #{file}.tar.bz2") : hacklib_color_compose('cyan', msg0)
        when 'extract zip'
            File.extname(file) == ".zip" ? sys("unzip #{file}") : hacklib_color_compose('cyan', msg0)
        when 'compress tar'
            sys("tar cf #{export}.tar #{file}") == true ? hacklib_color_compose('green', '[+] Done') : hacklib_color_compose('cyan', msg1)
        when 'compress gz'
            sys("tar czf #{export}.tar.gz #{file}") == true ? hacklib_color_compose('green', '[+] Done') : hacklib_color_compose('cyan', msg1)
        when 'compress bz2'
            sys("tar cjf #{export}.tar.bz2 #{file}") == true ? hacklib_color_compose('green', '[+] Done') : hacklib_color_compose('cyan', msg1)
        when 'compress zip'
            sys("gzip #{file}") == true ? hacklib_color_compose('green', '[+] Done') : hacklib_color_compose('cyan', msg1)
        else
            hacklib_color_compose('red', '[ERROR]: File format not supported at @hacklib_file_manager')
        end
    end # @hacklib_file_manager

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
        sex == 'm' ? first_name = $men[rand(0..$men.length)] : first_name = $wom[rand(0..$wom.length)]
        middle_name = $middle[rand(0..$middle.length)]
        random_number = rand(0..10)
        random_number < 6 ? second_middle_name = $middle[rand(0..$middle.length)] : second_middle_name = nil
        final_name = rand(0..10)
        final_name < 9 ? final_name = $final[rand(0..$final.length)] : final_name = nil
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
