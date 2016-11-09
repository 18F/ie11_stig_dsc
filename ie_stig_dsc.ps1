configuration IE11Stig
{
  param(
  [string[]]$ComputerName,
  )

  Node $ComputerName {
    # Debug Needed to prevent caching of resources, Implemented by
    # Set-DscLocalConfigurationManager -Path $Dsc -Verbose -Force -CimSession $cs
    LocalConfigurationManager
    {
        DebugMode = 'ForceModuleImport'
        RebootNodeIfNeeded = $true
    }

    Registry V-46515 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\InternetSettings\Zones\3"
      ValueType = "Dword"
      ValueName = '1607'
      ValueData = 3
    end

    Registry V-46609-1 {
      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Internet Explorer\Control Panel"
      ValueType = "Dword"
      ValueName = "History"
      ValueData = 1
    }


    Registry V-46609-2 {
      Ensure      = "Present"
      Key = "HKLM\oftware\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Url History"
      ValueType = "Dword"
      ValueName = "DaysToKeep"
      ValueData = 40
    }

    Registry V-46995 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Internet Explorer\Main"
      ValueType = "Dword"
      ValueName = 'Isolation64Bit'
      ValueData = 1
    end

    Registry V-46997 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
      ValueType = "Dword"
      ValueName = '270C'
      ValueData = 0
    end

    Registry V-46999 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1"
      ValueType = "Dword"
      ValueName = '270C'
      ValueData = 0
    end

    Registry V-47003 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0"
      ValueType = "Dword"
      ValueName = '270C'
      ValueData = 0
    end

    Registry V-47005 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4"
      ValueType = "Dword"
      ValueName = '270C'
      ValueData = 0
    end

    Registry V-47009 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2"
      ValueType = "Dword"
      ValueName = '270C'
      ValueData = 0
    end

    Registry V-64711 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Internet Explorer\PhishingFilter"
      ValueType = "Dword"
      ValueName = 'PreventOverride'
      ValueData = 1
    end

    Registry V-64713 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Internet Explorer\PhishingFilter"
      ValueType = "Dword"
      ValueName = 'PreventOverrideAppRepUnknown'
      ValueData = 1
    end

    Registry V-64715 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Internet Explorer\Security\ActiveX"
      ValueType = "Dword"
      ValueName = 'BlockNonAdminActiveXInstall'
      ValueData = 1
    end

    Registry V-64717 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings"
      ValueType = "Dword"
      ValueName = 'PreventIgnoreCertErrors'
      ValueData = 1
    end

    Registry V-64719 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
      ValueType = "Dword"
      ValueName = '2301'
      ValueData = 0
    end

    Registry V-64721 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4"
      ValueType = "Dword"
      ValueName = '2301'
      ValueData = 0
    end

    Registry V-64723 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1"
      ValueType = "Dword"
      ValueName = '1201'
      ValueData = 3
    end

    Registry V-64725 {

      Ensure      = "Present"
      Key = "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2"
      ValueType = "Dword"
      ValueName = '1201'
      ValueData = 3
    end
  } # Node
} # configuration

IE11Stig -ComputerName cazgdso914-d
