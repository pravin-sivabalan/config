def symlinkNew
  dir = `pwd`
  `ln -s #{dir}/.zshrc ~/.zshrc`
  `ln -s #{dir}/.vimrc ~/.vimrc`
end

def symlinkClean
  `rm ~/.zshrc`
  `rm ~/.vimrc`
end

if ARGV.empty?
  puts "Usage: setup.rb --new--clean"
  exit
end

arg = ARGV[0]

case arg
when "new"
  symlinkNew
when "clean"
  symlinkClean
else
  puts "Usage: setup.rb --new--clean"
end
