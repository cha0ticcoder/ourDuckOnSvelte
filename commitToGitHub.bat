@echo off

:: Here you are going to type the commit Message

set CommitMessage="Example!"
ECHO Type a commit Message (required)
set /p CommitMessage=

:: Press Button to commit & push to GitHub

pause

git add .
git commit -m "%CommitMessage%"
git push

:: Getting paused if any errors or something occurs for you to solve :)

pause
