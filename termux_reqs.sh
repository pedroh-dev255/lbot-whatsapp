#!/bin/sh
pkg install nodejs-lts -y && pkg install python -y && pkg install ffmpeg -y && npm i -g yarn
cd ~  && [ ! -d ".gyp" ] && mkdir ~/.gyp
echo "{
	'variables': {
		'android_ndk_path': ''
	}
}" >> ~/.gyp/include.gypi