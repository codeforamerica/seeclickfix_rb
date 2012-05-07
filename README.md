# SeeClickFix API [![Build Status](https://secure.travis-ci.org/codeforamerica/seeclickfix_rb.png)](http://travis-ci.org/codeforamerica/seeclickfix_rb)
A Ruby wrapper for the SeeClickFix APIs at
[http://help.seeclickfix.com/kb/api/api-overview](http://help.seeclickfix.com/kb/api/api-overview)

## Does your project or organization use this gem?
Add it to the [apps](http://github.com/codeforamerica/seeclickfix_rb/wiki/apps) wiki!

## Installation
    gem install seeclickfix

## Documentation
[http://rdoc.info/gems/seeclickfix](http://rdoc.info/gems/seeclickfix)

## Usage Examples
    require 'seeclickfix'

    @client = SeeClickFix::Client::New
    a = @client.list_issues("San Francisco")
    a.first.issue_id # => 108657

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help improve
this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace)
* by refactoring code
* by fixing [issues][]
* by reviewing patches
* [financially][]

[issues]: http://github.com/codeforamerica/seeclickfix_rb/issues
[financially]: https://secure.codeforamerica.org/page/contribute

## Submitting an Issue
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a [Gist][]
that includes a stack trace and any details that may be necessary to reproduce
the bug, including your gem version, Ruby version, and operating system.
Ideally, a bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake spec`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake spec`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add documentation for your feature or bug fix.
9. Run `bundle exec rake yard`. If your changes are not 100% documented, go
   back to step 8.
10. Add, commit, and push your changes.
11. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Copyright
Copyright (c) 2010 Code for America. See [LICENSE][] for details.

[license]: https://github.com/cfalabs/seeclickfix_rb/blob/master/LICENSE.md

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/seeclickfix_rb.png)](http://stats.codeforamerica.org/projects/seeclickfix_rb)
