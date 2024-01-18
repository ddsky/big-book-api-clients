=begin comment

Big Book API

Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

The version of the OpenAPI document: 1.0
Contact: mail@bigbookapi.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::ApiFactory;

use strict;
use warnings;
use utf8;

use Carp;
use Module::Find;

usesub WWW::OpenAPIClient::Object;

use WWW::OpenAPIClient::ApiClient;

=head1 Name

    WWW::OpenAPIClient::ApiFactory - constructs APIs to retrieve WWW::OpenAPIClient objects

=head1 Synopsis

    package My::Petstore::App;

    use WWW::OpenAPIClient::ApiFactory;

    my $api_factory = WWW::OpenAPIClient::ApiFactory->new( ... ); # any args for ApiClient constructor

    # later...
    my $pet_api = $api_factory->get_api('Pet');

    # $pet_api isa WWW::OpenAPIClient::PetApi

    my $pet = $pet_api->get_pet_by_id(pet_id => $pet_id);

    # object attributes have proper accessors:
    printf "Pet's name is %s", $pet->name;

    # change the value stored on the object:
    $pet->name('Dave');

=cut

# Load all the API classes and construct a lookup table at startup time
my %_apis = map { $_ =~ /^WWW::OpenAPIClient::(.*)$/; $1 => $_ }
            grep {$_ =~ /Api$/}
            usesub 'WWW::OpenAPIClient';

=head1 new($api_client)

    create a new WWW::OpenAPIClient::ApiFactory instance with the given WWW::OpenAPIClient::ApiClient instance.

=head1 new(%parameters)

    Any parameters are optional, and are passed to and stored on the api_client object.

    See L<WWW::OpenAPIClient::ApiClient> and L<WWW::OpenAPIClient::Configuration> for valid parameters

=cut

sub new {
    my ($class) = shift;

    my $api_client;
    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }
    bless { api_client => $api_client }, $class;
}

=head1 get_api($which)

    Returns an API object of the requested type.

    $which is a nickname for the class:

        FooBarClient::BazApi has nickname 'Baz'

=cut

sub get_api {
    my ($self, $which) = @_;
    croak "API not specified" unless $which;
    my $api_class = $_apis{"${which}Api"} || croak "No known API for '$which'";
    return $api_class->new($self->api_client);
}

=head1 api_client()

    Returns the api_client object, should you ever need it.

=cut

sub api_client { $_[0]->{api_client} }

=head1 apis_available()
=cut

sub apis_available { return map { $_ =~ s/Api$//; $_ } sort keys %_apis }

=head1 classname_for()
=cut

sub classname_for {
    my ($self, $api_name) = @_;
    return $_apis{"${api_name}Api"};
}


1;
