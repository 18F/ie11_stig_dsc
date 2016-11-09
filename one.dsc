# START_DESCRIBE V-46609-1

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
        ValueName = "DaysToKeep
        ValueData = 40
      }

# STOP_DESCRIBE V-46609
