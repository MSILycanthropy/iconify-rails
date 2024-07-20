# Easy to use Icons for Rails

This gem provides an easy integration with the icons from [iconify](https://github.com/iconify/icon-sets/tree/master).

Take any of the icons from their [json icon sets](https://github.com/iconify/icon-sets/tree/master/json).

They can be previewed at [iconify.design](https://iconify.design)

## Installation

Grab a json file from [iconify](https://github.com/iconify/icon-sets/tree/master/json).

```bash
./bin/bundle add iconify-rails
```

```bash
./bin/rails iconify:install
```

Now setup the location of the json, and the preferred variant if there is one.

```rb
Iconify.configure do |config|
  config.file = "vendor/icons/heroicons.json"
  config.suffix = :suffix
end
```

## Usage

In any view just use ye olde `icon` helper.

```erb
<%= icon(:house, class: 'size-6') %>
```

## License

`iconify-rails` is released under the [MIT License](https://opensource.org/licenses/MIT).
