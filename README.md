# Semgrep pre-commit

This repository contains several hooks designed to be used with the
[pre-commit] framework. Pre-commit uses [git hooks][git-hooks] (including, but
not only, the [eponymous one][git-pre-commit]) to run checks.

See [`.pre-commit-hooks.yaml`](.pre-commit-hooks.yaml) for the hooks this
repository defines.

## `semgrep ci`

To configure [pre-commit] to run custom rules and rulesets from the [Semgrep
AppSec Platform][semgrep-platform], similar to `semgrep ci`, we provide the
`semgrep-ci` hook. This can be used by adding the following to your
`.pre-commit-config.yaml` after installing `pre-commit`:

```yaml
- repo: https://github.com/semgrep/pre-commit
  rev: 'v1.33.22'
  hooks:
    - id: semgrep-ci
```

## `semgrep scan`

Likewise, you can configure a hook to run a `semgrep scan` with the `semgrep`
hook. As an example, the following configuration would scan the files to be
committed with a specified config, skipping files with unknown extensions:

```yaml
- repo: https://github.com/semgrep/pre-commit
  rev: 'v1.33.22'
  hooks:
    - id: semgrep
      # See https://semgrep.dev/explore to select a ruleset and copy its URL
      args: ['--config', '<SEMGREP_RULESET_URL>', '--error', '--skip-unknown-extensions']
```

## Running Pro rules

If you would like to run the pre-commit hook locally while using Semgrep Pro
rules:

1. Log in to your Semgrep account. Running this command launches a browser
   window, but you can also use the link that's returned in the CLI to proceed:

   ```
   $ semgrep login
   ```
2. In the Semgrep CLI login, click **Activate** to proceed.

---

The code in this repository is licensed under the terms of the [LGPL
2.1](LICENSE). For more information about the licensing details of Semgrep
itself see [our licensing page][semgrep-licensing].


[pre-commit]: https://pre-commit.com
[git-hooks]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks
[git-pre-commit]: https://git-scm.com/docs/githooks#_pre_commit
[semgrep-platform]: https://semgrep.dev/products/semgrep-appsec-platform
[semgrep-licensing]: https://semgrep.dev/docs/licensing/
