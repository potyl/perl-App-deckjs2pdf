use strict;
use warnings;

use ExtUtils::MakeMaker;
use File::Spec::Functions 'catfile';

sub main {

    my $site = 'https://github.com/potyl/perl-App-deckjs2pdf';
    my $script = catfile('bin', 'deckjs2pdf');

    WriteMakefile(
        AUTHOR       => 'Emmanuel Rodriguez <potyl@cpan.org>',
        NAME         => 'App::deckjs2pdf',
        ABSTRACT     => "Convert a Deck.js presentation to PDF",
        VERSION_FROM => $script,
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
        EXE_FILES => [ $script ],

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
