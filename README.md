# inspector-on-demand
[![Code Climate](https://codeclimate.com/github/danielkalen/inspector-on-demand/badges/gpa.svg)](https://codeclimate.com/github/danielkalen/inspector-on-demand)
[![NPM](https://img.shields.io/npm/v/inspector-on-demand.svg)](https://npmjs.com/package/inspector-on-demand)
[![NPM](https://img.shields.io/npm/dm/inspector-on-demand.svg)](https://npmjs.com/package/inspector-on-demand)

Launch v8 inspector/chrome-dev-tools on-demand for long-running apps. Requires node >= v8.0.0, otherwise dev

## Demo
[![Demo 1](.config/img/demo1.png?raw=true)](https://github.com/danielkalen/inspector-on-demand)
[![Demo 2](.config/img/demo2.png?raw=true)](https://github.com/danielkalen/inspector-on-demand)


## Usage
Load the `inspector-on-demand` module at any point in your app using `require('inspector-on-demand')` and type any of the following commands in your terminal to launch the inspector:

- `CTRL+Y` - activate inspector listener. This will not pause further script execution.
- `CTRL+U` - activate inspector listener and pause further script execution until inspector is open.
- `CTRL+X` - deactivate inspector listener. After this combo, the inspector cannot be re-enabled.

Then launch chrome and navigate to `chrome://inspect` and launch the newly added remote target. If you are having trouble launching the inspector you might want to consider using [NiM Inspector Manager Chrome Extension](https://chrome.google.com/webstore/detail/nodejs-v8-inspector-manag/gnhhdgbaldcilmgcpfddgdbkhjohddkj?hl=en).







## License
MIT © [Daniel Kalen](https://github.com/danielkalen)
