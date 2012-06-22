**Sinatra::Spec** is a class for describing [Sinatra](http://www.sinatrarb.com)
apps using [MiniTest](https://github.com/seattlerb/minitest), the unit testing
framework that ships with Ruby 1.9.

## Installation

Via [RubyGems](http://rubygems.org):

    $ sudo gem install sinatra-spec

From a local copy:

    $ git clone git://github.com/mjijackson/sinatra-spec.git
    $ cd sinatra-session
    $ rake package && sudo rake install

## Usage

To use `Sinatra::Spec` simply use your Sinatra app as the description argument.
Inside that `describe` block you have access to all the methods of [Rack::Test](https://github.com/brynary/rack-test/).
These methods will be called on a new instance of the app. See the [testing page](http://www.sinatrarb.com/testing.html)
in the Sinatra user manual for an explanation of how to test your app using
Rack::Test.

Here is an example:

```ruby
describe MyApp do
  describe "GET /" do
    it "should return ok" do
      get "/"
      assert last_response.ok?
    end
  end
end
```

## License

Copyright 2012 Michael Jackson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

The software is provided "as is", without warranty of any kind, express or
implied, including but not limited to the warranties of merchantability,
fitness for a particular purpose and non-infringement. In no event shall the
authors or copyright holders be liable for any claim, damages or other
liability, whether in an action of contract, tort or otherwise, arising from,
out of or in connection with the software or the use or other dealings in
the software.
