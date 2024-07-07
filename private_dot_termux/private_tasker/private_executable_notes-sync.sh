#!/data/data/com.termux/files/usr/bin/sh

set -e

ZK_PATH="$HOME/storage/dcim/notes"

cd "$ZK_PATH"

REMOTE_CHANGES="$(git remote update | wc -l)"

if [ "$REMOTE_CHANGES" -gt 0 ]; then
	echo "remote changes"
fi


LOCAL_CHANGES="$(git status --porcelain | wc -l)"

if [ "$LOCAL_CHANGES" -gt 0 ]; then
	echo "local changes"
else
	echo "no local changes"
fi

git pull -q

git add .

git commit -q -m "Last Sync: $(date +"%Y-%m-%d %H:%M:%S")" > /dev/null && echo "pushed local changes"

git push -q

echo "done"
