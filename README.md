# hacklib

## Introduction

    Hacklib is a code library for pentest frameworks, written in ruby, is essy to use and modify,
    the propose of this library is turn possible unify many tools in one syntax and/or provide many 
    different features for people creating their own frameworks.

## How it work?

    Its simple, the library provide to you many functions, this functions call in background system
    tools (like nmap) and provide abstraction from this tools, you interact with the abstract only,
    calling the library functions.

    The library functions heave parameters and returns, you need read the documentation for understand 
    it, but is not a big deal. A small amount of functions are implemented for the library only, its 
    not usable by you.

## The functions

    hacklib_get_time 
        |
        | -> Show the actual time

    sys(command, log = false)   
        |
        |-> Execute the system command and heave a log option,
        | for enable logging, use it with the log = true

    hacklib_color_compose(color, string)
        | 
        |-> Set the color of the string

    hacklib_mensager_handler(message)
        |
        |-> Provide an interface to interact with the library with system console
        
    hacklib_system_detector
        |
        |-> Detect de current sistem and package manager

    hacklib_package_installer
        |
        |-> Install many adcional packages

    hacklib_dir_scanner(custom = false, silent = '', output = '', extension = '', delay = '')
        |
        |-> Scanner an web server for files and folders (this is an abstraction of dir_buster)

    hacklib_dns_enumerator
        |
        |-> Use many tools to lookup de DNS names, like A, AAAA, MX, etc.

    hacklib_simple_domain_osint
        |
        |->  Use many tools to make banner grep, whois, email lookup and nikito

    hacklib_maclookup(vendor, path_db)
        |
        |-> Use mac vendor database to lookup the mac address 

    hacklib_bluetooth_attacker(mac, times)
        |
        |-> Simple made connection with the Bluetooth of target

    hacklib_fake_rg_generator
        |
        |-> Generate RG

    hacklib_fake_cpf_generator 
        |
        |-> Gererate CPF

    hacklib_fake_name_generator(sex)
        |
        |-> Generate fake name

    hacklib_fake_databse_primary_key(string)
        |
        |-> Generate a fake database primary key (with one hash 256)

    hacklib_fake_database_dump(type, size, path, filename)
        |
        |-> Generate a fake database with fake data

    hacklib_file_manager
        |
        |-> not avaliable at moment
