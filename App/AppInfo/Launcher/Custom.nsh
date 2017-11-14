${SegmentFile}

Var libclasspath

${SegmentPre}
    ${ForEachFile} "$0" "$1" "$EXEDIR\App\android-studio\lib\*.jar"
        StrCpy $libclasspath "$libclasspath;lib\$1"
    ${NextFile}
    StrCpy $libclasspath "$libclasspath;$PortableAppsDirectory\CommonFiles\JDK\lib\tools.jar"

    ${SetEnvironmentVariablesPath} PAL:libclasspath $libclasspath
!macroend
