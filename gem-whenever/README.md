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
set :output, nil
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
PATH=/home/hands/projects/ruby-practice/gem-whenever/vendor/bundle/ruby/2.1.0/bin:/home/hands/.rbenv/versions/2.1.5/bin:/home/hands/.rbenv/libexec:/home/hands/.rbenv/plugins/ruby-build/bin:/home/hands/.rbenv/shims:/home/hands/.rbenv/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/home/hands/bin

* * * * * /bin/bash -l -c 'echo '\''whenever test'\'' >> ~/whenever-test.txt >> /dev/null 2>&1'

0,30 7-23 * * * /bin/bash -l -c 'eval "$(rbenv init -)"; cd /home/hands/projects/ruby-practice/gem-whenever && ./run.sh >> /dev/null 2>&1'

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
