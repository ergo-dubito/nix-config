self: super:
{
  gitToolsEnv = super.buildEnv {
    name = "gitTools";
    paths = [
      self.gitMinimal
      self.gitAndTools.git-extras
      self.patch
      self.patchutils
    ];
    extraOutputsToInstall = [ "man" "doc" ];
  };
}
