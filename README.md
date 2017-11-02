# MyNotify
XFCE4用の /usr/bin/notify-send  のperlラッパー

# 注意！

$DISPLAY値は cronや手打ちのbashからだと異なることがあるため事前に調査が必要。

# SYNOPSIS

#! /usr/bin/perl
use strict;use utf8;
use lib qw{/home/ussr/Dropbox/littleCPAN/};
use MyNotify::Invoke;
 my $i = new  MyNotify::Invoke();  
 $i->send(  { title => "fuck it up"  , message => " like this" });
 
Now you can use it in a small notify program:

   my $data = "thereis";
  $i->send(  { title => "damn sys"  , message => "$data" , icon => "ash.jpg" ,urgency => "critical" });
   #消えない
   
  $i->send(  { title => "damn sys"  , message => " like this bar" , icon => "hina.png" , urgency => "low" });
  　#消える。　消える時間はXFCE4の環境設定のデフォルト値に依存する
  $i->send(  { title => "damn sys"  , message => " like this hoge" , icon => "ruruha.png" , urgency => "low" });
  $i->send(  { title => "damn sys"  , message => " like this hage" , icon => "priscilla.png" , urgency => "low" });
  
