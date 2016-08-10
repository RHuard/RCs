# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/rhuard/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -gx QA /usr/local/qa
set -gx TOOLS /usr/local/tools
set -gx QALIB $QA/lib
set -gx PERL5LIB $QA/lib
set -gx PATH $PATH $QA/bin $QA/tests $TOOLS /usr/bin
set -gx PYTHONPATH /ssd/helix /ssd/onefs/isilon/test-qa/lib

cowsay -f tux.cow "hello $USER"
cal
date
