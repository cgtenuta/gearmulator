cmake_minimum_required(VERSION 3.15)
project(osTIrusJucePlugin VERSION ${CMAKE_PROJECT_VERSION}) 

set(SOURCES
	skins/TrancyTI/VirusTI_Trancy.rml
	skins/TrancyTI/VirusTI_Trancy.rcss
	skins/TrancyTI/VirusTI_Hardware.rml
	parameterDescriptions_TI.json
	OsTIrusProcessor.cpp
	OsTIrusProcessor.h

	tus_settings_gui_OsTIrus.rcss
	tus_settings_gui_OsTIrus.rml
	tus_settings_dspaudio_OsTIrus.rcss
	tus_settings_dspaudio_OsTIrus.rml
)

SET(ASSETS 
	"parameterDescriptions_TI.json"
	"tus_settings_gui_OsTIrus.rml"
	"tus_settings_gui_OsTIrus.rcss"
	"tus_settings_dspaudio_OsTIrus.rml"
	"tus_settings_dspaudio_OsTIrus.rcss"
)

# HardwareTI shares the TrancyTI artwork folder and only has a different root rml (the first skin is the default)
addSkin("OsTIrus" "HardwareTI" "skins/TrancyTI" "VirusTI_Hardware.rml")
addSkin("OsTIrus" "TrancyTI" "skins/TrancyTI" "VirusTI_Trancy.rml")

buildSkinHeader()

juce_add_binary_data(osTIrusJucePlugin_BinaryData SOURCES ${ASSETS} ${ASSETS_SKINS})

createJucePluginWithFX(osTIrusJucePlugin "OsTIrus" "Ttip" "Ttif" osTIrusJucePlugin_BinaryData virusJucePlugin virusLib/device.h virusLib::Device)
