
var wsh = new ActiveXObject("WScript.Shell");

var env = wsh.Environment('SYSTEM');
var vimPath = env.item('HOME');
var strMicroprocessor = env.item('PROCESSOR_ARCHITECTURE');

vimPath = vimPath.replace(/vim74-kaoriya-win64/g, "");
vimPath = vimPath.replace(/vim74-kaoriya-win32/g, "");

wsh.run(vimPath + "mkdir_temp.bat",0, true);
wsh.run(vimPath + "mklink_settings.bat",0, true);
wsh.run(vimPath + "git_cloning.bat",0, true);

var objParam = WScript.Arguments;

var strErrorMessage = "";
var strVimExecCommand = vimPath;

if (strMicroprocessor == "x86"){
	// 32bit Vim;
	if (objParam.length == 0){
		strVimExecCommand += "vim74-kaoriya-win64\\gvim.exe";
	}
	else if (objParam(0) === "vim"){
		strVimExecCommand += "vim74-kaoriya-win32\\vim.exe";
	}
	else if (objParam(0) === "gvim"){
		strVimExecCommand += "vim74-kaoriya-win32\\gvim.exe";
	}
	else {
		strErrorMessage = "コマンドライン引数が不正です。";
	}
}
else if (strMicroprocessor == "AMD64"){
	// 64bit Vim;
	if (objParam.length === 0){
		strVimExecCommand += "vim74-kaoriya-win64\\gvim.exe";
	}
	else if (objParam(0) === "vim"){
		strVimExecCommand += "vim74-kaoriya-win64\\vim.exe";
	}
	else if (objParam(0) === "gvim"){
		strVimExecCommand += "vim74-kaoriya-win64\\gvim.exe";
	}
	else {
		strErrorMessage = "コマンドライン引数が不正です。";
	}
}

if (strErrorMessage !== ""){
	wsh.Popup(strErrorMessage, 0, "起動エラー", 1);
}
else {
	if (objParam.length >= 2){
		strVimExecCommand += (" " + objParam(1));
	}
	wsh.run(strVimExecCommand, 1, false);
}

