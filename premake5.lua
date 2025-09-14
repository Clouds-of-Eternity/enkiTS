project "enkiTS"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    rtti "Off"
    exceptionhandling "Off"
    staticruntime "Off"
    targetdir "bin/%{cfg.buildcfg}"
    includedirs {
        "src"
    }

    files { 
        "src/TaskScheduler_c.cpp",
        "src/TaskScheduler.cpp"
    }
        
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"