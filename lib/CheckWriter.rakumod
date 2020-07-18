unit class CheckWriter;

sub write-resources(:$debug) is export {
    for %?RESOURCES {
        note "DEBUG: \%?RESOURCES key is '$_'" if $debug;
    }
}
