import winim

proc toString(buf: openArray[WCHAR]): string =
    var final: string
    for byte in buf:
        final.add(chr(byte))
    return final

var hwProfileInfo: HW_PROFILE_INFO
GetCurrentHwProfile(&hwProfileInfo)
echo("HWID -> " & hwProfileInfo.szHwProfileGuid.toString)
