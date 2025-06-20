#!/usr/bin/env bash

pushd "$HOME"

DIR="$HOME/.pb2/bin"
mkdir -p "$DIR"

if [ ! -e "$DIR/zellij" ]
then
	case $(uname -m) in
		"x86_64"|"aarch64")
			ARCH=$(uname -m)
			;;
		"arm64")
			ARCH="aarch64"
			;;
		*)
			echo "Unsupported cpu arch: $(uname -m)"
			ARCH=""
			;;
	esac

	case $(uname -s) in
		"Linux")
			SYS="unknown-linux-musl"
			;;
		"Darwin")
			SYS="apple-darwin"
			;;
		*)
			echo "Unsupported system: $(uname -s)"
			SYS=""
			;;
	esac

	URL="https://github.com/zellij-org/zellij/releases/latest/download/zellij-$ARCH-$SYS.tar.gz"
	curl --location "$URL" | tar -C "$DIR" -xz
	if [[ $? -ne 0 ]]
	then
		echo
		echo "Extracting binary failed, cannot launch zellij :("
		echo "One probable cause is that a new release just happened and the binary is currently building."
		echo "Maybe try again later? :)"
	fi
else
	echo "zellij already exists"
fi

popd

# EOF
