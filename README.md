# Philippines

Provides data about the Philippines that you may need in your applications.

Data in this gem was taken from Wikipedia and the following repos:

* [ojtibi/philippine-provinces-and-cities-sql](https://github.com/ojtibi/philippine-provinces-and-cities-sql)
* [nadarei/philippines](https://github.com/nadarei/philippines)

## Installation

Add this line to your application's Gemfile:

    gem 'philippines', '~> 0.0.1.pre'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install philippines --pre

## Usage

This gem provides the following constant arrays:

* `Philippines::REGIONS`
* `Philippines::PROVINCES`
* `Philippines::CITIES`
* `Philippines::MUNICIPALITIES`
* `Philippines::MUNICIPALITIES_WITH_PROVINCE` - to differentiate between similarly named municipalities e.g. "San Francisco, Agusan del Sur" and "San Francisco, Cebu"

It also provides the following hashes:

* `Philippines::REGION_DATA`
* `Philippines::PROVINCE_DATA`

## TODO

* Find out the 5 incorrect Municipalities
* Add baranggays
* Create a zip-code suggestion feature based on data from `nadarei/philippines`
* Add additional information about regions and provinces

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
