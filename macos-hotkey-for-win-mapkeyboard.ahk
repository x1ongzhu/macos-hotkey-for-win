;管理员运行
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%" 
   ExitApp
}

;无环境变量
#NoEnv

;高进程
Process Priority,,High

;一直关闭 Capslock
SetCapsLockState, AlwaysOff

Capslock::
If !(A_PriorHotKey = A_ThisHotKey and A_TimeSincePriorHotkey < 500)
  Send ^{Space}
return

#c::
Send ^c
return

#q::
Send !{F4}
return

#BackSpace::
Send {Delete}
return
