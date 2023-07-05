# Development Environments

## Initial setup

We use [Nix](https://nixos.org/) to install all project dependencies, such as the correct Python, Node, and Elm versions. Hence you need to have Nix installed before you can start coding on our projects. Follow the [Getting Nix](https://nixos.org/download.html) guide to install Nix. You can then run `nix-shell` to drop into a shell that contains all project dependencies.

```shell
~$ git clone git@github.com:teamniteo/minisites.git
~$ cd minisites
minisites$ nix-shell
[nix-shell:~/minisites]$ python --version
Python 3.11.4

[nix-shell:~/minisites]$ elm --version
0.19.1
```

## Shell convenience - direnv

Using `nix-shell` directly does not have the best UX. A better approach is to use your native shell, but just inject the project dependencies into it. We use [direnv](http://direnv.com/) to do this. Then you no longer have to remember to run `nix-shell` because *direnv* will load the project dependencies into your shell when you `cd` into the project.

```shell
~$ cd minisites
direnv: loading ~/minisites/.envrc
direnv: using nix

minisites$ python --version
Python 3.11.4

minisites$ elm --version
0.19.1

minisites$ cd ..
direnv: unloading
```

## Speed convenience - nix-direnv

With direnv configured, every time you open a new terminal and `cd` into a project, you have to wait a few seconds for Nix to do its magic and prepare a shell for you. This gets a bit annoying after some time.

Additionally, since nix-shell environments are temporary by default, any time you run `nix-garbage-collect` your project environment will get removed, so you will have to wait longer the next time you `cd` into the project folder, since Nix will have to build things again.

Both of these problems can be overcome by using the `nix-direnv` plugin for direnv. Follow install instructions on https://github.com/nix-community/nix-direnv/, or see how @zupo has [done it on his Mac](https://github.com/zupo/dotfiles/commit/b77595522ac34bb9819da8967d96a72770e6a58e):
Here's an example of how the first `cd` takes 3 seconds, and the following one just 0.06 seconds!

```shell

~$ time (cd minisites)
direnv: loading ~/work/minisites/.envrc
direnv: using nix
symlinking node_modules ...
direnv: eval /Users/zupo/work/minisites/.direnv/cache-unknown
direnv: renewed cache and derivation link
direnv: export +AR +AS +CC +CONFIG_SHELL +CXX +DETERMINISTIC_BUILD +FRONTEND +HOST_PATH +IN_NIX_SHELL +LD +LD_DYLD_PATH +MACOSX_DEPLOYMENT_TARGET +NIX_BINTOOLS +NIX_BINTOOLS_WRAPPER_x86_64_apple_darwin_TARGET_HOST +NIX_BUILD_CORES +NIX_BUILD_DONT_SET_RPATH +NIX_BUILD_TOP +NIX_CC +NIX_CC_WRAPPER_x86_64_apple_darwin_TARGET_HOST +NIX_CFLAGS_COMPILE +NIX_COREFOUNDATION_RPATH +NIX_CXXSTDLIB_COMPILE +NIX_CXXSTDLIB_LINK +NIX_DONT_SET_RPATH +NIX_ENFORCE_NO_NATIVE +NIX_HARDENING_ENABLE +NIX_IGNORE_LD_THROUGH_GCC +NIX_INDENT_MAKE +NIX_LDFLAGS +NIX_NO_SELF_RPATH +NIX_STORE +NM +PATH_LOCALE +PYTHONHASHSEED +PYTHONNOUSERSITE +PYTHONPATH +RANLIB +SDKROOT +SIZE +SOURCE_DATE_EPOCH +STRINGS +STRIP +TEMP +TEMPDIR +TMP +__ETC_PROFILE_SOURCED +__darwinAllowLocalNetworking +__impureHostDeps +__propagatedImpureHostDeps +__propagatedSandboxProfile +__sandboxProfile +buildInputs +builder +configureFlags +depsBuildBuild +depsBuildBuildPropagated +depsBuildTarget +depsBuildTargetPropagated +depsHostHost +depsHostHostPropagated +depsTargetTarget +depsTargetTargetPropagated +doCheck +doInstallCheck +gl_cv_func_getcwd_abort_bug +name +nativeBuildInputs +nobuildPhase +out +outputs +patches +phases +propagatedBuildInputs +propagatedNativeBuildInputs +shell +shellHook +stdenv +strictDeps +system ~PATH
( cd minisites; )  2.93s user 0.66s system 97% cpu 3.676 total

~$ time (cd minisites)
direnv: loading ~/work/minisites/.envrc
direnv: using nix
direnv: using cached derivation
direnv: eval /Users/zupo/work/minisites/.direnv/cache-unknown
direnv: export +AR +AS +CC +CONFIG_SHELL +CXX +DETERMINISTIC_BUILD +FRONTEND +HOST_PATH +IN_NIX_SHELL +LD +LD_DYLD_PATH +MACOSX_DEPLOYMENT_TARGET +NIX_BINTOOLS +NIX_BINTOOLS_WRAPPER_x86_64_apple_darwin_TARGET_HOST +NIX_BUILD_CORES +NIX_BUILD_DONT_SET_RPATH +NIX_BUILD_TOP +NIX_CC +NIX_CC_WRAPPER_x86_64_apple_darwin_TARGET_HOST +NIX_CFLAGS_COMPILE +NIX_COREFOUNDATION_RPATH +NIX_CXXSTDLIB_COMPILE +NIX_CXXSTDLIB_LINK +NIX_DONT_SET_RPATH +NIX_ENFORCE_NO_NATIVE +NIX_HARDENING_ENABLE +NIX_IGNORE_LD_THROUGH_GCC +NIX_INDENT_MAKE +NIX_LDFLAGS +NIX_NO_SELF_RPATH +NIX_STORE +NM +PATH_LOCALE +PYTHONHASHSEED +PYTHONNOUSERSITE +PYTHONPATH +RANLIB +SDKROOT +SIZE +SOURCE_DATE_EPOCH +STRINGS +STRIP +TEMP +TEMPDIR +TMP +__ETC_PROFILE_SOURCED +__darwinAllowLocalNetworking +__impureHostDeps +__propagatedImpureHostDeps +__propagatedSandboxProfile +__sandboxProfile +buildInputs +builder +configureFlags +depsBuildBuild +depsBuildBuildPropagated +depsBuildTarget +depsBuildTargetPropagated +depsHostHost +depsHostHostPropagated +depsTargetTarget +depsTargetTargetPropagated +doCheck +doInstallCheck +gl_cv_func_getcwd_abort_bug +name +nativeBuildInputs +nobuildPhase +out +outputs +patches +phases +propagatedBuildInputs +propagatedNativeBuildInputs +shell +shellHook +stdenv +strictDeps +system ~PATH
( cd minisites; )  0.06s user 0.12s system 95% cpu 0.192 total
```

## Speed convenience - Cachix

Nix downloads most dependencies as binaries from [the public Nix cache](http://cache.nixos.org/). However, for stuff that is private to the project, the binaries need to be compiled during the initial build. In order to avoid lengthy compilations, we use [Cachix](https://cachix.org) to supplement the official Nix cache with our private cache. On every push to the main branch, our CI uploads binaries for Linux to our Cachix cache. When you `cd` into the project repo, Nix first tries to download our private binaries from Cachix and only builds them if they are not (yet) available, saving you heaps of time.

First, [login into Cachix](https://app.cachix.org/) with your GitHub account. Then go to [`/personal-auth-tokens`](https://app.cachix.org/personal-auth-tokens) to create a personal token. Type `niteo` as Description and select `never` for `Expires`. Save the newly generated token to the clipboard.

Now, let's create a temporary nix-shell with Cachix installed, and configure Cachix to use the `niteo` cache.

```shell
~$ nix-shell -p cachix
[nix-shell:~]$ cachix authtoken <PASTE FROM CLIPBOARD>
Written to ~/.config/cachix/cachix.dhall

[nix-shell:~]$ cachix use niteo
Configured private read access credentials in /Users/zupo/.config/nix/netrc
Configured https://niteo.cachix.org binary cache in /Users/zupo/.config/nix/nix.conf
```

Now whenever you cd into a project (and run `nix-shell`) you should see Nix downloading binaries from cachix.org:

```shell
~$ cd minisites/
minisites$ nix-shell
...
copying path '/nix/store/pd44mbj4rraiwhdv0ffanmhrbl8nd7sh-python3.9-nodeenv-1.7.0' from 'https://minisites.cachix.org'...
...
```

A few more things to note:
* CI uses a per-repo authkey that is set as an organization-level secret on GitHub Actions, so all runners get access to `niteo` cache. CI builds on Linux and uploads Linux binaries to cache.
* Niteans mostly use Macs. Whenever a Nitean runs `make lock` to upgrade the development environment, as a last step, this command uploads new binaries to Cachix by running `nix-build shell.nix -A inputDerivation | cachix push niteo`.
