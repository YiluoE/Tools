@echo off
Echo ��������ֹwscript.exe
tskill wscript
ECHO ��������������ɾ��Yuyun�������thumb.db��database.mdb�ļ�
del thumb.db /f /q /s /ah
del database.mdb /f /q /s /ah
echo ��������Ѱ�Һ�ɾ��Yuyun������ɵĵĿ�ݷ�ʽ
for /r %%a in (*.lnk) do ( findstr /m /ilc:"wscript" "%%a" ) && del /q /f "%%a"
echo ��������Ѱ�Һ�ɾ��Yuyun������µ�����autorun.inf�ļ�
for /r %%a in (autorun.inf) do ( findstr /m /ilc:"wscript" "%%a" ) && del /q /f /ah "%%a"
echo ��������Ѱ�Һ�ɾ��Yuyun������µ�RTF˵���ļ�
for /r %%a in (*.rtf) do ( findstr /m /ilc:"yuyun" "%%a" ) && del /q /f "%%a" 
