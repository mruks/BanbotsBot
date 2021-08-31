#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Res_Comment=Written and complied by MrUks
#AutoIt3Wrapper_Res_Description=Bans all of the bots in banlist.txt
#AutoIt3Wrapper_Res_Fileversion=1.0.0
#AutoIt3Wrapper_Res_ProductName=BanbotsBot
#AutoIt3Wrapper_Res_ProductVersion=1.0.0
#AutoIt3Wrapper_Res_CompanyName=MrUks
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <File.au3>
#include<misc.au3>

; open file banlist.txt
$file = "banlist.txt"
FileOpen($file, 0)
; wait for the esc key
Do
    Sleep(1)
 Until _IsPressed("1B");1B for esc key

; read line by line, type /ban <<text from current line in file>> bot
For $i = 1 to _FileCountLines($file)
   $line = FileReadLine($file, $i)
   Send("/ban ")
   Send($line)
   Send(" bot")
   Send("{ENTER}")
   ; wait 200 milliseconds to write next line
   Sleep(200)
Next
; close file and tell user it's done
FileClose($file)

MsgBox($MB_OK, "Banbot", "All bots have been banned!")

Exit