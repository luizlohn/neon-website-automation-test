# Neon WebSite Automation Test
Testing Status and texts with
- Cucumber
- Capybara 
- SitePrism


## How to Configure Environment ##

### Install ruby on Windows ###
Access to step-by-step help:
* [Install Ruby](http://installrails.com)

Verify Ruby version
```shell
$ ruby -v
```

### Install Bundle ###
Access project root path to install bundle:
```shell
cd /neon-website-automation-test
gem install bundler
```

### Install all gems ###
In the same project root path run the follow command:
```shell
bundle install
```

### Drivers necessary: ###

* Install:
    * [chromedriver](https://christopher.su/2015/selenium-chromedriver-ubuntu/ )

### Execute tests###
Execute o seguinte comando dentro da raiz do projeto:
```shell
$ rake run[BROWSER,ENVIRONMENT,LANGUAGE,RUNNER,DEBUGGER,PROFILE]
```
Understand command:  
BROWSER: chrome, firefox  
ENVIRONMENT: master, qa  
LANGUAGE: en, fr  
RUNNER: local, ci  (prepareted to)
DEBUGGER: true, false
PROFILE: [profiles](cucumber.yml)  

Example: 
```shell
bundle exec rake run[chrome,qa,pt,local,true,questions]
```