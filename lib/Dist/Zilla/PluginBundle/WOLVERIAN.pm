package Dist::Zilla::PluginBundle::WOLVERIAN;
BEGIN {
  $Dist::Zilla::PluginBundle::WOLVERIAN::VERSION = '0.0.2'; # TRIAL
}

use MooseX::Declare;

# ABSTRACT: TODO
class Dist::Zilla::PluginBundle::WOLVERIAN
    with Dist::Zilla::Role::PluginBundle::Easy {

    use Dist::Zilla::Plugin::ModuleBuild;
    use Dist::Zilla::Plugin::AutoPrereqs;
    use Dist::Zilla::Plugin::MinimumPerl;
    use Dist::Zilla::Plugin::MetaJSON;
    use Dist::Zilla::Plugin::PodWeaver;
    use Dist::Zilla::Plugin::InstallGuide;

    use Dist::Zilla::Plugin::MetaTests;
    use Dist::Zilla::Plugin::PodSyntaxTests;
    use Dist::Zilla::Plugin::PodCoverageTests;
    use Dist::Zilla::Plugin::EOLTests;
    use Dist::Zilla::Plugin::MinimumVersionTests;

    use Dist::Zilla::Plugin::Bugtracker;
    use Dist::Zilla::Plugin::Repository;

    method configure {
        $self->add_bundle(Filter => {
            bundle => "Basic",
            remove => "MakeMaker"
        });

        $self->add_plugins(qw/
            ModuleBuild
            AutoPrereqs
            MinimumPerl
            MetaJSON
            PodWeaver
            InstallGuide

            MetaTests
            PodSyntaxTests
            PodCoverageTests
            EOLTests
            MinimumVersionTests

            Bugtracker
            Repository
        /);
    }
}

# vi: ft=perl-mxd et

__END__
=pod

=head1 NAME

Dist::Zilla::PluginBundle::WOLVERIAN - TODO

=head1 VERSION

version 0.0.2

=head1 AUTHOR

Ilmari Vacklin <ilmari.vacklin@cs.helsinki.fi>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Ilmari Vacklin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

