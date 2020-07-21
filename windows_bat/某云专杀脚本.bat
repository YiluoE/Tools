@echo off
Echo 程序先中止wscript.exe
tskill wscript
ECHO 程序正在搜索和删除Yuyun蠕虫藏身的thumb.db和database.mdb文件
del thumb.db /f /q /s /ah
del database.mdb /f /q /s /ah
echo 程序正在寻找和删除Yuyun蠕虫生成的的快捷方式
for /r %%a in (*.lnk) do ( findstr /m /ilc:"wscript" "%%a" ) && del /q /f "%%a"
echo 程序正在寻找和删除Yuyun蠕虫留下的隐藏autorun.inf文件
for /r %%a in (autorun.inf) do ( findstr /m /ilc:"wscript" "%%a" ) && del /q /f /ah "%%a"
echo 程序正在寻找和删除Yuyun蠕虫留下的RTF说明文件
for /r %%a in (*.rtf) do ( findstr /m /ilc:"yuyun" "%%a" ) && del /q /f "%%a" 
