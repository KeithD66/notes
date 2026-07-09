@echo off
setlocal

set "GIT_DIR=%TEMP%\notes_git_repo\.git"
set "GIT_WORK_TREE=%CD%"

if not exist "%GIT_DIR%\" (
  echo Missing git directory: %GIT_DIR%
  echo Please initialize or confirm notes repo exists first.
  exit /b 1
)

git --git-dir "%GIT_DIR%" --work-tree "%GIT_WORK_TREE%" %*
exit /b %ERRORLEVEL%
