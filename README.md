cymbal
=========

[![Gem Version](https://img.shields.io/gem/v/cymbal.svg)](https://rubygems.org/gems/cymbal)
[![Dependency Status](https://img.shields.io/gemnasium/akerl/cymbal.svg)](https://gemnasium.com/akerl/cymbal)
[![Code Climate](https://img.shields.io/codeclimate/github/akerl/cymbal.svg)](https://codeclimate.com/github/akerl/cymbal)
[![Coverage Status](https://img.shields.io/coveralls/akerl/cymbal.svg)](https://coveralls.io/r/akerl/cymbal)
[![Build Status](https://img.shields.io/travis/akerl/cymbal.svg)](https://travis-ci.org/akerl/cymbal)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Convert Ruby hash keys from strings to symbols for easier manipulation

## Usage

```
require 'cymbal'
x = {
    'foo' => 1,
    'bar' => {
        'cats' => 6,
        'dogs' => 'better'
    }
}
Cymbal.symbolize(x) # returns {:foo=>1, :bar=>{:cats=>6, :dogs=>"better"}}
```

## Installation

    gem install cymbal

## License

cymbal is released under the MIT License. See the bundled LICENSE file for details.

