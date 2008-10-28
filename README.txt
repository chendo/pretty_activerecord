= pretty_activerecord

* http://github.com/chendo/pretty_activerecord

== DESCRIPTION:

Makes printing ActiveRecord objects pretty (via #inspect method).

== FEATURES/PROBLEMS:

* #inspect method displays an ActiveRecord instance over multiple lines making it easier to read.

== SYNOPSIS:

Sample output:

		Person:
    	int(4)     id           : nil
    	str(255)   first_name   : "Jack"
    	str(255)   last_name    : "Chen"
    	text       bio          : "I work at Mocra"
    	int        age          : 19
    	decimal(8) height       : 169.4
    	datetime   date_of_birth: "1988-10-29 00:00:00"
    	boolean    human        : true


== REQUIREMENTS:

* TODO - how to make it work with Rails

== INSTALL:

* sudo gem install chendo-pretty_activerecord --source http://gems.github.com

In your Rails app, add the following to your config/environment.rb:

		config.gem 'chendo-pretty_activerecord', :source => 'http://gems.github.com'



== LICENSE:

(The MIT License)

Copyright (c) 2008 Jack Chen, Mocra

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.