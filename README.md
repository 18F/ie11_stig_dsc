# Set some IE11 STIG setting with DSC.

See related compliance project with crappy XML processing code at
https://github.com/inspec-stigs/internet_explorer_11

# Demonstration

- Windows w/ internet_explorer_11
- WMF5.0 or better installed (aka powershell5)
- Perhaps need: `Set-ExecutionPolicy RemoteSigned`
- Run the following to fix localhost:

```
./ie_stig_dsc.ps1
```
