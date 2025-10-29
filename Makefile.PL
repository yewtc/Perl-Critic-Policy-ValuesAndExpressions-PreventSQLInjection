use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  NAME => 'Perl::Critic::Policy::ValuesAndExpressions::PreventSQLInjection',
  PREREQ_PM => {
    'Carp' => 0,
    'PPI' => '1.222',
    'PPIx::QuoteLike' => '0.015',
    'Perl::Critic::Policy' => 0,
    'Perl::Critic::Utils' => 0,
  },
  TEST_REQUIRES => {
    'ExtUtils::MakeMaker' => 0,
    'File::Spec' => 0,
    'PPI' => '1.222',
    'Test::FailWarnings' => 0,
    'Test::More' => 0,
    'Test::Perl::Critic' => 0,
    'Test::Perl::Critic::Policy' => 0,
  },
  VERSION => '2.000002',
  test => { TESTS => 't/*.t' },
);

WriteMakefile(%WriteMakefileArgs);

# Fallback prereqs for legacy installers
my %FallbackPrereqs = (
  'Carp' => 0,
  'ExtUtils::MakeMaker' => 0,
  'File::Spec' => 0,
  'PPI' => '1.222',
  'PPIx::QuoteLike' => '0.015',
  'Perl::Critic::Policy' => 0,
  'Perl::Critic::Utils' => 0,
);

1;
