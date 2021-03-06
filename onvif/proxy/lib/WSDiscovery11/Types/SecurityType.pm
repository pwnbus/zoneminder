package WSDiscovery::Types::SecurityType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(0);

sub get_xmlns { 'http://docs.oasis-open.org/ws-dd/ns/discovery/2009/01' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Sig_of :ATTR(:get<Sig>);

__PACKAGE__->_factory(
    [ qw(        Sig

    ) ],
    {
        'Sig' => \%Sig_of,
    },
    {
        'Sig' => 'WSDiscovery::Elements::Sig',

    },
    {

        'Sig' => '',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

WSDiscovery::Types::SecurityType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SecurityType from the namespace http://docs.oasis-open.org/ws-dd/ns/discovery/2009/01.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Sig

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # WSDiscovery::Types::SecurityType
   Sig =>  { # WSDiscovery::Types::SigType
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

