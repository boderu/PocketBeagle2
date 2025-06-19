#!/usr/bin/env bash

echo ; echo "Additional Python libraries"

pushd $HOME

python3 -m venv '.pyvenv'
source $HOME/.pyvenv/bin/activate

if [ -e "$HOME/.pb2/python-packages.conf" ]
then
	cat "$HOME/.pb2/python-packages.conf" | grep -v '^#' | grep -v '^$' | \
	while read LINE
	do
		$HOME/.pyvenv/bin/python3 -m pip install $LINE
		echo
	done
fi

popd

# EOF
