require 'etc'

Etc.passwd { |user|

   Facter.add("home_#{user.name}") do
      setcode do
         user.dir
      end
   end

}
