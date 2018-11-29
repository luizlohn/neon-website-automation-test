require 'cucumber/rake/task'

desc 'To run:'
task :run, [:BROWSER, :ENVIRONMENT, :LANGUAGE, :RUNNER, :DEBUGGER, :PROFILE] do |_t, args|
  init = 'cucumber' \
         ' BROWSER=' + args[:BROWSER] +
         ' ENVIRONMENT=' + args[:ENVIRONMENT] +
         ' LANGUAGE=' + args[:LANGUAGE] +
         ' RUNNER=' + args[:RUNNER] +
         ' DEBUGGER=' + args[:DEBUGGER] +
         ' -p ' + args[:PROFILE]

  system(init)
end
