## Summary
This script will **permanently delete** all your private Gists, so proceed with caution. It's handy for when you've built up a lot of cruft when sharing snippets. This will give you a nice clean slate to work with.

This is a slight tweak (aka, a complete rip of) [Trevor's original Gist](https://gist.github.com/trevorturk/4955199).

## Setup

1. `gem install httparty`
1. Open `gist_cleaner.rb` in any editor and change the [`@username`](https://github.com/lateplate/gist-cleaner/blob/master/gist_cleaner.rb#L6) and [`@password`](https://github.com/lateplate/gist-cleaner/blob/master/gist_cleaner.rb#L7) values to your's. If you're using Github's 2-factor authentication, you'll need to create an [application password](https://github.com/settings/tokens) and choose a single permission: `gist -> Create gists`

## Run
1. From the command line, run `ruby gist_cleaner.rb`
