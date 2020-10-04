# Sometimes, the documentation is going to leave you scratching your head.

# In a very early assignment at Launch School, you are tasked with writing a 
# program that loads some text messages from a YAML file. We do this with YAML::load_file:

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# I went here first:

# https://ruby-doc.org/stdlib-2.7.1/libdoc/yaml/rdoc/YAML.html

# per Ruby docs it states "...as the implementation is provided by the Psych library, 
# detailed documentation can be found in that library's docs (also part of standard library)."

# I then looked at the psych library page and went down to methods where ::load_file is, clicked on that 
# and it lead me to here:

# https://ruby-doc.org/stdlib-2.7.1/libdoc/psych/rdoc/Psych.html#method-c-load_file