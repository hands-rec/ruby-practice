# whenever gem

## install
```
$ bundle install --path vendor/bundle
```

```
$ bundle ecex wheneverize .
```

if `./config dose not exist.`

```
$ mkdir config
$ bundle exec wheneverize .
```

## setup
in `config/schedule.rb`

```
every 1.minute do
  command "echo 'whenever test' >> ~/whenever-test.txt"
end
```

`rbenv`

```
env :PATH, ENV['PATH']
job_type :rbenv, "eval \"$(rbenv init -)\"; cd :path && :task :output"

every 1.hour do
  rbenv "bundle exec xxxxx"
end
```


## update crontab 
```
$ bundle exec whenever --update-crontab
```
or
```
$ bundle exec whenever -i
```

```
$ crontab -l
# Begin Whenever generated tasks for: /home/hands/projects/ruby-practice/gem-whenever/config/schedule.rb
* * * * * /bin/bash -l -c 'echo '\''whenever test'\'' >> ~/whenever-test.txt'

# End Whenever generated tasks for: /home/hands/projects/ruby-practice/gem-whenever/config/schedule.rb
```

## clear crontab 
```
$ bundle exec whenever --clear-crontab
```
or
```
$ bundle exec whenever -c
```
