Facter.add("ruby_version") do
  rvm_binary = "/usr/local/rvm/bin/rvm"

  setcode do
    Facter::Core::Execution.exec("echo `ruby --version`|/usr/bin/tr [:blank:] ['_']|awk -F'_' '{ print $1"_"$2 }'")
  end
end
