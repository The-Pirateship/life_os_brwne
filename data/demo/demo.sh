#!/bin/bash

# execute in base directory (ie `.../life_os`) like `./data/demo/demo.sh`

set -euo pipefail

# global variables
readonly DEMO_FOLDER="data/demo"
declare -a FILE_PATHS=(
  "0_quick_notes/Dinner Date.md"
  "1_journal/2024-03-23.md"
  "4_projects/Debian Setup.md"
)
readonly FILE_PATHS

# ----- PRINT FUNCTIONS -----

# Set text colours if supported.
# Arguments:
#   colours enabled, a boolean
colours() {
  NC="" BOLD="" RED="" GREEN="" YELLOW="" BLUE="" MAGENTA="" CYAN=""
  B_RED="" B_GREEN="" B_YELLOW="" B_BLUE="" B_MAGENTA="" B_CYAN=""
  demo_txt="demo"
  if [[ "$(tput colors)" -ge 8 ]] && [[ $1 == true ]]; then
    NC="$(tput sgr0)" # text reset (select graphic representation default)
    BOLD="$(tput bold)"
    RED="$(tput setaf 1)"            # red
    GREEN="$(tput setaf 2)"          # green
    YELLOW="$(tput setaf 3)"         # yellow
    BLUE="$(tput setaf 4)"           # blue
    MAGENTA="$(tput setaf 5)"        # magenta
    CYAN="$(tput setaf 6)"           # cyan
    B_RED="$(tput bold setaf 1)"     # bold red
    B_GREEN="$(tput bold setaf 2)"   # bold green
    B_YELLOW="$(tput bold setaf 3)"  # bold yellow
    B_BLUE="$(tput bold setaf 4)"    # bold blue
    B_MAGENTA="$(tput bold setaf 5)" # bold magenta
    B_CYAN="$(tput bold setaf 6)"    # bold cyan
    cozydot_txt="${B_RED}d${B_YELLOW}e${B_GREEN}m${B_CYAN}o${NC}"
  fi
}

_info_msg() { echo "${B_BLUE}Info:${NC} $1"; }

_success_msg() { echo "${B_GREEN}Success:${NC} $1"; }

_warning_msg() { echo "${B_YELLOW}Warning:${NC} $1"; }

_error_msg() { echo "${B_RED}Error:${NC} $1" && exit 1; }

_usage() {
  cat <<EOF
$demo_txt is a demo script to move files from demo folder to the main directory. No arg moves files into main folder.

${YELLOW}Usage:${NC} ${demo_txt} ${CYAN}[Options]${NC}

${YELLOW}Options:${NC}
  ${GREEN}-n, --no-colour      ${NC} Do not output any colour. Useful when redirecting output to a logfile
  ${GREEN}-h, --help           ${NC} Print help information
  ${GREEN}-u, --uninstall      ${NC} Move files from the main directory to the demo folder

${YELLOW}Example:${NC} ${demo_txt} ${CYAN}--uninstall${NC}
EOF
}

# ----- OPTIONS -----

uninstall() {
  for file in "${FILE_PATHS[@]}"; do
    if [[ ! -f "pages/$file" ]]; then
      _error_msg "File $file does not exist in the main directory"
    fi
    mv "pages/$file" "$DEMO_FOLDER/$file"
  done
  _success_msg "Moved files to $DEMO_FOLDER"
}

# ----- SET GLOBAL VARIABLES -----

# ----- HELPERS -----
_install() {
  for file in "${FILE_PATHS[@]}"; do
    if [[ ! -f "$DEMO_FOLDER/$file" ]]; then
      _error_msg "File $file does not exist in the demo folder"
    fi
    mv "$DEMO_FOLDER/$file" "pages/$file"
  done
  _success_msg "Moved files to main directory"
}

# ----- MAIN -----

main() {
  # PRINT FUNCTIONS
  colours true

  [[ $# -gt 0 ]] || { _install && exit 0; }

  while [[ $# -gt 0 ]]; do
    case $1 in
      -h | --help) _usage && exit 0 ;;
      # OPTIONS
      -n | --no-colour) colours false ;;
      -u | --uninstall) uninstall ;;
    esac
    shift
  done
}

main "$@"
