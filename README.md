# headless browser tests
lets sit and try headless browsers for chrome and firefox in 10 minutes

[![Build Status](https://travis-ci.org/upgrad/headless_browser_tests.svg?branch=master)](https://travis-ci.org/upgrad/headless_browser_tests)

## SetUp

1) Installing Browser in your system

A.On mac

* Install chrome 59+
* Install firefox 56+

B.On Ubuntu server

* Install firefox

```
$ sudo apt-get update
$ wget https://ftp.mozilla.org/pub/firefox/releases/56.0/linux-x86_64/en-US/firefox-56.0.tar.bz2
$ tar -xjf firefox-56.0.tar.bz2
$ sudo mv firefox /opt/firefox56
$ sudo ln -s /opt/firefox56/firefox-bin /usr/bin/firefox
```

* Install chrome

```
$ export CHROME_BIN=/usr/bin/google-chrome
$ sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
$ sudo apt-get install google-chrome-stable
```

2) Install ruby 2.3.0 or above with rvm
RVM is ruby version manager. We can install it

```bash
$curl -sSL https://get.rvm.io | bash -s stable --ruby
$rvm install 2.3.0
$rvm use 2.3.0 --default
```
On ubuntu
```bash
$sudo apt-get install ruby
```

3) Install bundler
```bash
$gem install bundler
```
clone the repo and run bundle install ,all dependencies will be added
```bash
$bundle install
```
4)Install geckodriver

```bash
$wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.19.0-linux64.tar.gz
$tar -xvzf geckodriver*
$chmod +x geckodriver
$sudo mv geckodriver /usr/local/bin/
```

## Run Test

### To run tests on headless chrome
```bash
$bundle exec cucumber DRIVER=headless_chrome
```

### To run tests on headless firefox
```bash
$bundle exec cucumber DRIVER=headless_firefox
```

### To run tests on headless firefox with verbose logging
```bash
$bundle exec cucumber DRIVER=headless_firefox DEBUG=true
```
