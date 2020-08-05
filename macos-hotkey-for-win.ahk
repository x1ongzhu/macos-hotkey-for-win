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

#v::
Send ^v
return

#a::
Send ^a
return

#z::
Send ^z
return

#x::
Send ^x
return

#w::
Send ^w
return

#q::
Send !{F4}
return

#f::
Send ^f
return

#BackSpace::
Send {Delete}
return

#s::
Send ^s
return