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

    ---The voice chat singleton is a means of creating customized voice chat rooms for players to interact with each other in multiplayer.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_voiceChat
    ---@class VoiceChat
    VoiceChat = {}

    ---@enum VoiceChat.RadioHandlers
    VoiceChat.RadioHandlers = {
        CHANNEL = 3,
        CRYPTO_KEY = 7,
        CURRENT_RECEIVING_RADIO = 13,
        ENCRYPTION_STATUS = 6,
        EXTERNALLY_CONTROLLED = 12,
        FREQUENCY = 1,
        GUARD_STATUS = 5,
        IS_TRANSMITTING = 10,
        MODULATION = 4,
        ON_OFF_STATUS = 0,
        SOUND_VOLUME = 2,
        SQUELCH_STATUS = 8,
        TRANSMISSION_ENABLED = 11,
        TRANSMITTER_PWR = 9,
    }

    ---@enum VoiceChat.RadioHandlersSingletons
    VoiceChat.RadioHandlersSingletons = {
        INITIALIZATION_COMPLETE = 3,
        INTERCOM_HOT_MIKE_STATUS = 1,
        INTERCOM_SOUND_VOLUME = 0,
    }

    ---@enum VoiceChat.RoomType
    VoiceChat.RoomType = {
        MANAGEABLE = 2,
        MULTICREW = 1,
        PERSISTENT = 0,
    }

    ---@enum VoiceChat.Side
    VoiceChat.Side = {
        ALL = 3,
        BLUE = 2,
        NEUTRAL = 0,
        RED = 1,
    }


    --Functions
    do
        ---The voice chat singleton is a means of creating customized voice chat rooms for players to interact with each other in multiplayer.
        ---https://wiki.hoggitworld.com/view/DCS_singleton_voiceChat
        ---@param roomName string
        ---@param side VoiceChat.Side
        ---@param roomType VoiceChat.RoomType
        function VoiceChat.createRoom(roomName, side, roomType) end

        --No Docu
        function VoiceChat.addUser() end

        --No Docu
        function VoiceChat.changeSlot() end

        --No Docu
        function VoiceChat.changeVoiceChatOption() end
 
        --No Docu
        function VoiceChat.deleteRoom() end

        --No Docu
        function VoiceChat.getAccessPeersList() end

        --No Docu
        function VoiceChat.getActiveRoom() end

        --No Docu
        function VoiceChat.getCurrentTransmittingRadio() end

        --No Docu
        function VoiceChat.getEncryptionEnabled() end

        --No Docu
        function VoiceChat.getIntercomData() end

        --No Docu
        function VoiceChat.getIntercomIndication() end

        --No Docu
        function VoiceChat.getIntercomMicMode() end

        --No Docu
        function VoiceChat.getIntercomVolume() end

        --No Docu
        function VoiceChat.getIsExternallyControlled() end

        --No Docu
        function VoiceChat.getLastTransmittingRadio() end

        --No Docu
        function VoiceChat.getMicMode() end

        --No Docu
        function VoiceChat.getOptions() end

        --No Docu
        function VoiceChat.getPeerAudioState() end

        --No Docu
        function VoiceChat.getPeersList() end

        --No Docu
        function VoiceChat.getRadioChannel() end

        --No Docu
        function VoiceChat.getRadioEncryptionKey() end

        --No Docu
        function VoiceChat.getRadioFrequency() end

        --No Docu
        function VoiceChat.getRadioFrequencyByUnits() end

        --No Docu
        function VoiceChat.getRadioGuardReceiverFrequency() end

        --No Docu
        function VoiceChat.getRadioGuardReceiverModulation() end

        --No Docu
        function VoiceChat.getRadioGuardReceiverOnOff() end

        --No Docu
        function VoiceChat.getRadioIndication() end

        --No Docu
        function VoiceChat.getRadioList() end

        --No Docu
        function VoiceChat.getRadioModulation() end

        --No Docu
        function VoiceChat.getRadioOnOff() end

        --No Docu
        function VoiceChat.getRadioPower() end

        --No Docu
        function VoiceChat.getRadioSquelchOnOff() end

        --No Docu
        function VoiceChat.getRadioVolume() end

        --No Docu
        function VoiceChat.getRooms() end

        --No Docu
        function VoiceChat.getSide() end

        --No Docu
        function VoiceChat.getVoiceChatMode() end

        --No Docu
        function VoiceChat.isInUnit() end

        --No Docu
        function VoiceChat.isIntercom() end

        --No Docu
        function VoiceChat.isRadioAvailableForTransmission() end

        --No Docu
        function VoiceChat.leaveRoom() end

        --No Docu
        function VoiceChat.onPeerConnect() end

        --No Docu
        function VoiceChat.onPeerDisconnect() end

        --No Docu
        function VoiceChat.onProcessState() end

        --No Docu
        function VoiceChat.onRtcConnectionChange() end

        --No Docu
        function VoiceChat.onRtcFailure() end

        --No Docu
        function VoiceChat.onRtcSignalingChange() end

        --No Docu
        function VoiceChat.peerVoiceEnable() end

        --No Docu
        function VoiceChat.radioEncryptionOnOff() end

        --No Docu
        function VoiceChat.reconnect() end

        --No Docu
        function VoiceChat.removeUser() end

        --No Docu
        function VoiceChat.setActiveRoom() end

        --No Docu
        function VoiceChat.setEncryptionEnabled() end

        --No Docu
        function VoiceChat.setIntercomMicMode() end

        --No Docu
        function VoiceChat.setIsExternallyControlled() end

        --No Docu
        function VoiceChat.setMicMode() end

        --No Docu
        function VoiceChat.setOptions() end

        --No Docu
        function VoiceChat.setRadioChannel() end

        --No Docu
        function VoiceChat.setRadioEncryptionKey() end

        --No Docu
        function VoiceChat.setRadioFrequency() end

        --No Docu
        function VoiceChat.setRadioGuardReceiverFrequency() end

        --No Docu
        function VoiceChat.setRadioGuardReceiverModulation() end

        --No Docu
        function VoiceChat.setRadioGuardReceiverOnOff() end

        --No Docu
        function VoiceChat.setRadioModulation() end

        --No Docu
        function VoiceChat.setRadioOnOff() end

        --No Docu
        function VoiceChat.setRadioPower() end

        --No Docu
        function VoiceChat.setRadioSquelchOnOff() end

        --No Docu
        function VoiceChat.setRadioVolume() end

        --No Docu
        function VoiceChat.setTrackAudioVolume() end

        --No Docu
        function VoiceChat.setVoiceChatMode() end

        --No Docu
        function VoiceChat.startStopTestSoundFilterOptions() end

        --No Docu
        function VoiceChat.startStream() end

        --No Docu
        function VoiceChat.startTestPeekMeter() end

        --No Docu
        function VoiceChat.stopStream() end

        --No Docu
        function VoiceChat.stopTestPeekMeter() end

        --No Docu
        function VoiceChat.testCallPeekMeterFunc() end

        --No Docu
        function VoiceChat.updateCrewVolume() end

        --No Docu
        function VoiceChat.updateSoundFilterParameters() end
    end
end
