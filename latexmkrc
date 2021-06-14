# -*- mode: perl; coding: utf-8; -*-
#
# ----------------------------------------
# Custom rules for latexmk
# ----------------------------------------

# longueur quasi illimitée des lignes de log affichées par (La)TeX
$ENV{max_print_line} = 10000;

# liste des warnings
$silence_logfile_warnings = 1;

#------------------------------------------------------------
# Pour gérer les appels à makeglossaries (et à xindy)
#------------------------------------------------------------

# règles générales
sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries", "-q", $_[0];
  }
  else {
    system "makeglossaries", $_[0];
  };
}

# le glossaire
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
push @generated_exts, 'glo', 'gls', 'glg';

# les acronymes
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
push @generated_exts, 'acn', 'acr', 'alg';

# la nomenclature
add_cus_dep('los-glo', 'los-gls', 0, 'run_makeglossaries');
push @generated_exts, 'los-glo', 'los-gls', 'los-glg';

# la liste des fonctions de calcul
add_cus_dep('fom-glo', 'fom-gls', 0, 'run_makeglossaries');
push @generated_exts, 'fom-glo', 'fom-gls', 'fom-glg';


#------------------------------------------------------------
# Pour compiler
#------------------------------------------------------------

### avec pdflatex
$pdflatex="pdflatex -synctex=1 %O %S";
### avec lualatex (experimental)
# $pdflatex="lualatex %O %S";

#------------------------------------------------------------
# Pour nettoyer les fichiers intermédiaires
#------------------------------------------------------------
$clean_ext .= ' %R.bbl %R.run.xml %R.xdy';
