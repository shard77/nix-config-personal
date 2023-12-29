{
  inputs,
  pkgs,
  ...
}: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = "$username$hostname$directory$git_branch$git_state$git_status$cmd_duration$python$character";
      directory = {
        style = "blue";
      };
      character = {
        success_symbol = "[❯](blue)";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❮](green)";
      };
      git_branch = {
        format = "[$branch]($style)";
        style = "bright-black";
      };
      git_status = {
        format = "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218) ($ahead_behind$stashed)]($style)";
        style = "cyan";
        conflicted = "";
        untracked = "";
        modified = "";
        staged = "";
        renamed = "";
        deleted = "";
        stashed = "≡";
      };
      git_state = {
        format = "\([$state( $progress_current/$progress_total)]($style)\) ";
        style = "bright-black";
      };
      cmd_duration = {
        format = "[$duration]($style)";
        style = "blue";
      };
      python = {
        format = "[$virtualenv]($style)";
        style = "bright-black";
      };
    };
  };
}