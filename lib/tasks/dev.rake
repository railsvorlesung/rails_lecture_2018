namespace :dev do
  desc 'test task'
  task :run do
    begin
      17 / 0
    rescue Exception => ex
      puts "#{ '$' * 45}MARKE"
      puts "#{__FILE__}:#{__LINE__}"
      puts "#{ '$' * 50}"
      pp ex
      pp ex.message
      puts "#{ '$' * 50}"

    end


  end
end
