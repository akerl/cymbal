cymbal
=========

[![Gem Version](https://img.shields.io/gem/v/cymbal.svg)](https://rubygems.org/gems/cymbal)
[![Dependency Status](https://img.shields.io/gemnasium/akerl/cymbal.svg)](https://gemnasium.com/akerl/cymbal)
[![Build Status](https://img.shields.io/circleci/project/akerl/cymbal.svg)](https://circleci.com/gh/akerl/cymbal)
[![Coverage Status](https://img.shields.io/codecov/c/github/akerl/cymbal.svg)](https://codecov.io/github/akerl/cymbal)
[![Code Quality](https://img.shields.io/codacy/31e5cb840fdc473e9a52ef2a46501a07.svg)](https://www.codacy.com/app/akerl/cymbal)
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

