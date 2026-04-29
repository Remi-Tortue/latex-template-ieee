use Cwd;
my $current_dir = getcwd;

$pdf_mode = 1;

$ENV{'TEXINPUTS'}="$current_dir/src//:" . ($ENV{'TEXINPUTS'} // '');
$ENV{'BIBINPUTS'}="$current_dir/src//:" . ($ENV{'BIBINPUTS'} // '');
@default_files = ('main.tex');

$out_dir="./build";