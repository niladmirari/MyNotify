=pod

#! /usr/bin/perl
use strict;use utf8;
use lib qw{/home/ussr/Dropbox/littleCPAN/};
use MyNotify::Invoke;
 my $i = new  MyNotify::Invoke();  
 $i->send(  { title => "fuck it up"  , message => " like this" });

=cut

package MyNotify::Invoke; # version 1
use Exporter;

@ISA = qw(Exporter);
@EXPORT = qw(new send);

use strict; use Data::Dumper;use utf8;
sub new {
  my $pkg = shift;
  my $self; { my %hash; $self = bless(\%hash, $pkg); }
  $self->{DISPLAY} =  q{export DISPLAY=:1.0}; # 手動で bash なりで表示する空間の $DISPLAY値を求めないといけない
 return $self;
}

sub send {
   my $self = shift;
   my $DISPLAY =$self->{DISPLAY}; 
   my $q  = shift;
      $q->{title}   = " " . $q->{title}   || "     " ;
      $q->{message} = " " . $q->{message} || " void message " ; # " " は　--なんかが来た時に　unableoptionをふせぐ

      $q->{other_param} = $q->{other_param} || "";  
      # -u, --urgency=LEVEL               Specifies the urgency level (low, normal, critical).
      $q->{urgency} = $q->{urgency} || "normal" ; # critical never disappear ?
      $q->{message} = " <span color='red'> Critical  - " .scalar localtime. " - </span> \n "  .$q->{message} if $q->{urgency} eq "critical"; 
      
      my $Dir = q{/home/ussr/Dropbox/littleCPAN/MyNotify/system_icon/};
      $q->{icon}    = $Dir . $q->{icon} || "/home/ussr/Dropbox/Sieve/system_icon/5.png" ; # prisira 
      

   my $exe= qq{$DISPLAY && /usr/bin/notify-send  $q->{other_param}  -u "$q->{urgency}" -i "$q->{icon}"  "$q->{title} " "$q->{message} "};
   `$exe`;
}

1;
__END__
