use strict;
use warnings;

use ExtUtils::MakeMaker;

sub main {

    my $site = 'https://github.com/potyl/perl-App-deckjs2pdf';

    WriteMakefile(
        AUTHOR       => 'Emmanuel Rodriguez <potyl@cpan.org>',
        NAME         => 'App::deckjs2pdf',
        VERSION_FROM => 'bin/deckjs2pdf',
        PREREQ_PM => {
            'Getopt::Long'   => 0,
            'Pod::Usage'     => 0,
            'URI'            => 0,
            'File::Basename' => 0,
            'Cwd'            => 0,

            'Gtk3'                        => 0,
            'Gtk3::WebKit'                => 0,
            'Cairo::GObject'              => 0,
            'Glib'                        => 0,
        },
        LICENSE => 'perl',
        EXE_FILES => [ 'bin/deckjs2pdf' ],

        META_MERGE => {
            resources => {
                homepage   => $site,
                bugtracker => "$site/issues",
                repository =>  $site,
            },
        },
    );

    return 0;
}


exit main() unless caller;
