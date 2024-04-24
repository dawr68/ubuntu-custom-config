#! bash oh-my-bash.module

OSH_THEME_GIT_PROMPT_DIRTY="✗"
OSH_THEME_GIT_PROMPT_CLEAN="✓"
SCM_THEME_PROMPT_PREFIX="${_omb_prompt_white}on ${_omb_prompt_navy}"
SCM_THEME_PROMPT_SUFFIX=""
OMB_PROMPT_CONDAENV_FORMAT='(%s)'
OMB_PROMPT_VIRTUALENV_FORMAT='(%s)'
OMB_PROMPT_SHOW_PYTHON_VENV=${OMB_PROMPT_SHOW_PYTHON_VENV:=true}
function _omb_theme_PROMPT_COMMAND {
  local ps_username="${_omb_prompt_purple}\u${_omb_prompt_normal}"
  local ps_path="${_omb_prompt_green}\w${_omb_prompt_normal}"
  local ps_user_mark="${_omb_prompt_red}λ${_omb_prompt_normal}"

  PS1="\n${_omb_prompt_bold_gray}[${_omb_prompt_navy}\@${_omb_prompt_bold_gray}] - $(_omb_prompt_print_python_venv) "
  PS1+="$ps_username in $ps_path $(scm_prompt_info)\n"
  PS1+=" $ps_user_mark "
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
