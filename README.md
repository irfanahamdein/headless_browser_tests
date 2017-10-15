# headless browser tests
lets sit and try headless browsers for chrome and firefox in 10 minutes

[![Build Status](https://travis-ci.org/notimewaste/chrome_headless_test.svg?branch=master)](https://travis-ci.org/notimewaste/chrome_headless_test)

## SetUp

1) You must have chrome 59+ installed in your system.
2) You must have chrome 56+ installed in your system.
3) Install ruby 2.3.0 or above with rvm
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

4) Install bundler
```bash
$gem install bundler
```
clone the repo and run bundle install ,all dependencies will be added
```bash
$bundle install
```
5)Install geckodriver

```bash
$wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.19.0-linux64.tar.gz
$tar -xvzf geckodriver*
$chmod +x geckodriver
$sudo mv geckodriver /usr/local/bin/
```

## Run Test
```bash
$cucumber
```
