[![Build Status](https://travis-ci.com/tbrowder/CheckWriter.svg?branch=master)](https://travis-ci.com/tbrowder/CheckWriter)

# CheckWriter

Using Hjson templates similar to the format of the check (*.chk) files of [GnuCash](https://gnucash.org),
this module and its binary allows the user to print checks on standard sizes of paper.

The default is to print a single check on Office Depot's single-check
paper (US Letter size) using the provided check template file. The
font used is the *E-13B, Common Machine Language font* in a free (includes commercial use)
implementation called the *MICR Encoding Font* provided by
**[1001 Fonts](https://www.1001fonts.com/micr-encoding-font.html#styles)**
with reasonable [terms of use](https://www.1001fonts.com/licenses/general-font-usage-terms.html).
That font is the standard expected for the US and is also used in some other countries.

## SYNOPSIS

```
use CheckWriter;

checkwriter add-resources # writes the resources data from the installed module
checkwriter write-check payee=jones.json [fmt=user.json] [bank=user-bank.json]
```

The data for the payee is in the `jones.json` file. The user's default
personal or business check information is in the `user.json` file, and
the user's default bank information is in the `user-bank.json`
file. All are shown as examples in the `data` directory. All the json
input files use the `Hjson` format (see module `JSON::Hjson` for more
information).

## Planned features

+ Ability to print multiple checks in one batch
+ Ability to use other standard check papers
+ Ability to use other fonts for other world regions

## Contributing

Interested users are encouraged to contribute improvements and
corrections to this module.  Pull requests (PRs), bug reports, feature
requests, and suggestions are always welcome.

## LICENSE and COPYRIGHT

Artistic 2.0. See [LICENSE](./LICENSE).

&#x00A9; 2020, Thomas M. Browder, Jr. <<tom.browder@gmail.com>>
