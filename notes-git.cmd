@echo off
setlocal

set "GIT_DIR=%TEMP%\notes_git_repo\.git"
set "GIT_WORK_TREE=%~dp0"
set "GIT_INDEX_FILE=%TEMP%\notes_git_index"
set "GIT_OBJECT_DIRECTORY=%TEMP%\notes_git_objects"

if not exist "%GIT_DIR%\" (
  echo 找不到 Git 元数据目录: %GIT_DIR%
  echo 请先运行一次初始化流程，或确认 notes 仓库是否已创建。
  exit /b 1
)

git --git-dir "%GIT_DIR%" --work-tree "%GIT_WORK_TREE%" %*
exit /b %ERRORLEVEL%
