﻿/*
【RunAny菜单透明插件】
* 1. 菜单自动透明
* 2. 菜单自动选中第一项
*/
global RunAny_Plugins_Version:="1.05.31"
#NoEnv                  ;~不检查空变量为环境变量
#NoTrayIcon             ;~不显示托盘图标
#SingleInstance,Force   ;~运行替换旧实例
SetBatchLines,-1        ;~脚本全速执行(默认10ms)

;等待RunAny菜单显示，最多等待3秒
WinWait, ahk_class #32768, , 3
if !ErrorLevel
{
	;【将菜单为变半透明，(0-255)表示(透明-不透明)】
	WinSet, Transparent, 205, ahk_class #32768
	;【自动选中第一项菜单】
;	SendInput,{Down}
}
ExitApp
