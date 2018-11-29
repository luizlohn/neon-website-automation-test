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

* Inside this project we have MAC and Windows drivers

### Execute tests###
Execute this command inside the project:
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
bundle exec rake run[chrome,qa,pt,local,true,question]
```

### PlayList listened to do this project: ###
[Deezer #HITOU](https://www.deezer.com/playlist/1592591647?utm_source=deezer&utm_content=playlist-1592591647&utm_term=1624798546_1543511458&utm_medium=web)
