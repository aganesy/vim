
var wsh = new ActiveXObject("WScript.Shell");

wsh.run("mklink_settings.bat",0, true);

var objParam = WScript.Arguments;
var env = wsh.Environment('SYSTEM');
var strMicroprocessor = env.item('PROCESSOR_ARCHITECTURE');

var strErrorMessage = "";
var strVimExecCommand = "";
if (strMicroprocessor == "x86"){
	// 32bit Vim;
	if (objParam.length == 0){
		strVimExecCommand = "vim74-kaoriya-win64\\gvim.exe";
	}
	if (objParam(0) == "vim"){
		strVimExecCommand = "vim74-kaoriya-win32\\vim.exe";
	}
	else if (objParam(0) == "gvim"){
		strVimExecCommand = "vim74-kaoriya-win32\\gvim.exe";
	}
	else {
		strErrorMessage = "コマンドライン引数が不正です。";
	}
}
else if (strMicroprocessor == "AMD64"){
	// 64bit Vim;
	if (objParam.length == 0){
		strVimExecCommand = "vim74-kaoriya-win64\\gvim.exe";
	}
	else if (objParam(0) == "vim"){
		strVimExecCommand = "vim74-kaoriya-win64\\vim.exe";
	}
	else if (objParam(0) == "gvim"){
		strVimExecCommand = "vim74-kaoriya-win64\\gvim.exe";
	}
	else {
		strErrorMessage = "コマンドライン引数が不正です。";
	}
}

if (strErrorMessage !== ""){
	wsh.Popup(strErrorMessage, 0, "起動エラー", 1);
}
else {
	wsh.run(strVimExecCommand,1, false);
}

