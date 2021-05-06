use 5.018;
use ExtUtils::MakeMaker;

# Generate README.pod and output as README and pods for all modules in lib
my $preop =
  'perldoc -uTF $(VERSION_FROM) > README.pod; \\' .
  'pod2text README.pod | tee $(DISTVNAME)/README > README; \\' .
  'find lib/ | grep -oP ".*(?=\.pm)" | xargs -I{} perldoc -uTF -d $(DISTVNAME)/{}.pod {}.pm || true';

WriteMakefile(
    NAME             => 'YuiRestClient',
    AUTHOR           => 'QE YaST',
    ABSTRACT_FROM    => 'lib/YuiRestClient.pm',
    VERSION_FROM     => 'lib/YuiRestClient.pm',
    MIN_PERL_VERSION => '5.008004',
    META_MERGE       => {
        'meta-spec' => {version => 2},
        resources   => {
            repository => {
                type => 'git',
                url  => 'https://github.com/qe-yast/perl-yui-rest-client.git',
                web  => 'https://github.com/qe-yast/perl-yui-rest-client',
            }
        }
    },
    NO_MYMETA          => 1,
    CONFIGURE_REQUIRES => {
        "ExtUtils::MakeMaker" => 6.58
    },
    PREREQ_PM => {
        'List::MoreUtils' => 0,
        'Mojo::UserAgent' => 0,
        'constant'        => 0,
        'parent'          => 0,
        'strict'          => 0,
        'warnings'        => 0,

    },
    TEST_REQUIRES => {
    },
    dist => {
        PREOP => $preop,
    },
);
