--[[
    Script by Tobias00723                          ████████
    from the TGFB server                      ████████  ████████
    Discord : https://discord.gg/hEHd4A3czx ██████          ██████
    any questions?                   ^^   ████     ▒      ▒     █████
    find me on my discord server     ^^ ████      ▒▒      ▒▒▒      ███
    _________________________________ ████       ▒▒▒      ▒▒▒       ███
                                      ███       ▒▒▒▒      ▒▒▒▒       ███
                                     ██       ▒▒▒▒        ▒▒▒▒▒      ███
                                    ███      ▒▒▒▒▒▒        ▒▒▒▒▒▒      ███
        Script as is.               ███     ▓▒▒▒▒▒▒        ▒▒▒▒▒▒▒     ███
                                    ███    ▒▒▒▒▒▒▒▒        ▓▒▒▒▒▒▒▓    ███
        Enjoy The open sauce!       ███   ▓▒▒▓▒▒▓▒▓         ▒▒▓▒▒▒▒▒   ███
                                    ███  ▓▒▓▓▒▓▓▒▓          ▓▓▒▓▓▓▓▓▓  ███
   If used credit, is appreaciated.  █  ▓▓▓▒▓ ▓▓▓▒          ▓▓▓▓ ▒▓▒▓▓  █
        Happy "borrowing" :)           ▓▓▓▓    ▓▓▓   ████    ▓▓▓   ▓▓▓▓
    _________________________________ ▓▓▓      ▓▓    ▓▓▓▓    ▓▓      ▓▓▓
                                     ▓▓        ▓▓    ▓▓▓▓    ▓▓        ▓▓
                                    ▓▓          ▓    ▓▓▓▓     ▓         ▓▓
    Copyright (c) 2025 TGFB                          ▓▓▓▓
    All rights reserved.                             ▓▓▓▓
]]


do
    ---@meta

    --classes
    do

    end

    --No Docu
    ---@class log
    log = {}

    ---@enum Log_level
    log =
    {
        MESSAGE          = 0,
        ASYNC            = 0,
        TIME             = 1,
        TIME_UTC         = 1,
        IMMEDIATE        = 1,
        LEVEL            = 2,
        ALERT            = 2,
        MODULE           = 4,
        THREAD           = 8,
        ERROR            = 8,
        WARNING          = 16,
        INFO             = 64,
        DEBUG            = 128,
        TIME_RELATIVE    = 128,
        TIME_LOCAL       = 129,
        EXTRA_INFO       = 512,
        MODELTIME        = 512,
        ALL              = 255,
        ALL_LEVELS       = 255,
        TRACE            = 256,
        FULL             = 271,
        NO_HEADER_FOOTER = 16384,
        RELIABLE         = 32768,
        BACKUP           = 32768,
    }

    --Functions
    do
        --no Docu
        function log.alert() end

        --no Docu
        function log.debug() end

        --no Docu
        function log.error() end

        --no Docu
        function log.info() end

        --no Docu
        function log.set_output() end

        --no Docu
        function log.set_output_rules() end

        --no Docu
        function log.warning() end

        --no Docu
        ---@param logger string
        ---@param level Log_level
        ---@param msg string
        function log.write( logger, level, msg ) end

        --no Docu
        function log.backup() end
    end
end
