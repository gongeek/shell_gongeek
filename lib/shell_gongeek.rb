require "shell_gongeek/version"

module ShellGongeek
  def self.run
    # Your code goes here...
    command=ARGV[0]
    params=ARGV.slice(1, ARGV.length)

    #杀死占用某个端口的所有程序
    #例如 sr pk 3000
    if command=='pk'
      p_info=`lsof -i:#{params[0]}`
      if p_info.length==0
        puts "#{params[0]}端口没有程序"
      end
      pids=[]
      lines=p_info.split("\n")
      lines.delete_at(0)
      lines.each { |line| pids.push line.split(/[\W]+/)[1] }
      puts pids.join(' ')
      if pids.length>0
        if system "kill #{pids.join(' ')}"
          puts "成功杀死占用#{params[0]}的程序"
        end
      end
    end

    if command=='pl'
      if params[0]
        exec "lsof -i:#{params[0]}"
      else
        puts '请输入端口号'
      end

    end
  end
end
