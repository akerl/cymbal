cymbal
=========

[![Gem Version](https://img.shields.io/gem/v/cymbal.svg)](https://rubygems.org/gems/cymbal)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/akerl/cymbal/build.yml?branch=main)](https://github.com/akerl/cymbal/actions)
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

The symbolize call will convert keys recursively and will handle an array of hashes.

If a hash includes keys that would collide (for example, :foo and 'foo'), an ArgumentError will be raised.

## Installation

    gem install cymbal

## License

cymbal is released under the MIT License. See the bundled LICENSE file for details.

