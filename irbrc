# print SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

# For Autocompletion
require 'irb/completion'

# Prompt behavior
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

# History
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 150
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# prints local methods of objacts class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
  
  def blank?
    respond_to?(:empty?) ? empty? : nil?
  end
end

# copy a string to the clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end
require "rubygems"
