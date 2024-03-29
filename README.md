# electron-usb

This is a darwin(osx) prebuilt version of electron-usb for building osx app on linux. If you build electron-usb for osx on Linux it does not work so this step is required to provide the prebuilt files when building on linux.

## Updating

Create a new electron project

`$ git clone https://github.com/electron/electron-quick-start`

Add electron-usb

`$ npm i electron-usb`

Install electron-rebuild and make sure that there is no version mismatch.

`$ npm i electron-rebuild`

`$ ./node_modules/.bin/electron-rebuild`

Go to the module directory 

`$ cd node_modules/electron-usb`

Initialize git repo, add remote and force push.

`$ git init`

`$ git remote add origin https://github.com/ProximaTeam/electron-usb-darwin-prebuilt.git`

`$ git add .`

`$ git commit -m "update;"`

`$ git push -f -u origin master`

------------------------------------------

node-usb fork to be used with electron. It's a fork from node-usb which binary are released on github.
It's a temporary solution until binary package will be available for node 5.1.x and
windows / linux platforms on node-usb. Pleas refer to https://github.com/nonolith/node-usb on
how to use these APIs.

# Prerequisite
Install the node version used by electron (currently is 5.1.1 for electron 0.36.7).
A github valid `NODE_PRE_GYP_GITHUB_TOKEN` to be set as env variable.

# Release & Build
Remember to change the binary host with the correct version (see https://github.com/bchr02/node-pre-gyp-github).
After the release, build the binaries for each OS.

# Linux build
On Ubuntu 15.10, install:
```
sudo apt-get install libudev-dev libusb-1.0-0-dev g++-multilib libudev-dev:i386
```
And then run `npm run release-linux` (x64) or `npm run release-linux-ia32` (ia32) to publish
the binary build

# Windows build
Use a  Windows 7 on x64. Install Visual Studio (2013 is OK on Windows 7) and Python 2.7.x
Always specify the VisualStudio version using `--msvs_version=xxxx`, foor instance
`npm i --msvs_version=2013`

Release using  `npm run release-win --msvs_version=2013` (x64) or `npm run release-win-ia32 --msvs_version=2013` (ia32)

# OSx build
After `npm i`, just use `npm run release-darwin`
