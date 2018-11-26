require 'parallel'
require 'cucumber/rake/task'

desc 'To run:'
task :run, [:BROWSER, :ENVIRONMENT, :LANGUAGE, :RUNNER, :DEBUGGER,:PROFILE] do |_t, args|

  init = 'cucumber' \
         ' BROWSER=' + args[:BROWSER] +
      ' ENVIRONMENT=' + args[:ENVIRONMENT] +
      ' LANGUAGE=' + args[:LANGUAGE] +
      ' RUNNER=' + args[:RUNNER] +
      ' DEBUGGER=' + args[:DEBUGGER] +
      ' -p ' + args[:PROFILE]

  system(init)
end


task :parallel, [:BROWSER, :ENVIRONMENT, :LANGUAGE, :RUNNER, :DEBUGGER,:PROFILE] do |t, args|
  @num_parallel = 5

  Parallel.map([*1..@num_parallel], in_processes: @num_parallel) do |task_id|
    ENV["TASK_ID"] = (task_id - 1).to_s

    Rake::Task["run"].invoke('browserstack',args[:ENVIRONMENT],args[:LANGUAGE],args[:RUNNER],args[:DEBUGGER],args[:PROFILE])
    Rake::Task["run"].reenable
  end
end

