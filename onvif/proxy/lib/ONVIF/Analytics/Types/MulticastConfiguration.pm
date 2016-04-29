package ONVIF::Analytics::Types::MulticastConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Address_of :ATTR(:get<Address>);
my %Port_of :ATTR(:get<Port>);
my %TTL_of :ATTR(:get<TTL>);
my %AutoStart_of :ATTR(:get<AutoStart>);

__PACKAGE__->_factory(
    [ qw(        Address
        Port
        TTL
        AutoStart

    ) ],
    {
        'Address' => \%Address_of,
        'Port' => \%Port_of,
        'TTL' => \%TTL_of,
        'AutoStart' => \%AutoStart_of,
    },
    {
        'Address' => 'ONVIF::Analytics::Types::IPAddress',
        'Port' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'TTL' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'AutoStart' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'Address' => 'Address',
        'Port' => 'Port',
        'TTL' => 'TTL',
        'AutoStart' => 'AutoStart',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::MulticastConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MulticastConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Address


=item * Port


=item * TTL


=item * AutoStart




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::MulticastConfiguration
   Address =>  { # ONVIF::Analytics::Types::IPAddress
     Type => $some_value, # IPType
     IPv4Address => $some_value, # IPv4Address
     IPv6Address => $some_value, # IPv6Address
   },
   Port =>  $some_value, # int
   TTL =>  $some_value, # int
   AutoStart =>  $some_value, # boolean
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

