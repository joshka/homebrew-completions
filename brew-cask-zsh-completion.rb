class BrewCaskZshCompletion < Formula
  desc "Zsh completion for brew-cask"
  homepage "https://github.com/joshka/brew-cask-zsh-completions"
  url "https://github.com/joshka/brew-cask-zsh-completions/archive/v1.0.tar.gz"
  sha256 "ec274779e14af69a76a3b884f8fcf0b127692e6cb36f8799f76635da068243e0"
  head "https://github.com/joshka/brew-cask-zsh-completions.git"

  bottle :unneeded

  def install
    zsh_completion.install "_brew_cask"
  end

  test do
    assert_match "_brew_cask",
      shell_output("zsh -c 'fpath+=/usr/local/share/zsh/site-functions; autoload -U compinit && compinit; whence _brew_cask'")
  end
end
