object dtmConexao: TdtmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 139
  Width = 98
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=127.0.0.1'
      'Database=academia'
      'User_Name=root'
      'Password='
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    Connected = True
    Left = 32
    Top = 24
  end
end
