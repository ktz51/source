#!/usr/bin/perl

use warnings;

use strict;

use CGI; #Carrega o módulo CGI, que permite criarmos scripts cgi - claro!

my $cgi = CGI->new; #Criamos uma instância da classe CGI

print $cgi->header, # Primeiro criamos o Cabeçalho

      $cgi->start_html('Minha Primeira Página Perl'), # Iniciamos o Arquivo HTML

      $cgi->h1('BEM VINDO AO PERL'), # Cria a Tag <h1>TEXTO</h1>

      $cgi->p(scalar localtime), # Cria <p>Texto</p>

      $cgi->h3("Minhas Variáveis Locais:\n");

foreach my $chave (keys(%ENV)) {

   print $cgi->p($chave . " => $ENV{$chave}");

}

print $cgi->end_html; # Finalizamos o HTML
