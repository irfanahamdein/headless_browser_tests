# headless chrome
lets sit and try headless_chrome in 10 minutes

## SetUp

1) You must have below chrome 59+ installed in your system.
2) Install ruby 2.0 or above with rvm
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

## Run Test
```bash
$cucumber
```
