 #! /usr/bin/perl

use strict;use utf8;
use lib qw{/home/ussr/Dropbox/littleCPAN/};
use MyNotify::Invoke;
 my $i = new  MyNotify::Invoke();
 
   my $data = "thereis";
  $i->send(  { title => "damn sys"  , message => "$data" , icon => "ash.jpg" ,urgency => "critical" });
  $i->send(  { title => "damn sys"  , message => " like this bar" , icon => "hina.png" , urgency => "low" });
  $i->send(  { title => "damn sys"  , message => " like this hoge" , icon => "ruruha.png" , urgency => "low" });
  $i->send(  { title => "damn sys"  , message => " like this hage" , icon => "priscilla.png" , urgency => "low" });
  
  
