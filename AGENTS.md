# homebrew-tap — notes for agents

Start with `README.md`.

## Fixes are never one-offs

A fix that exists only on a running machine is not done. Every change to infrastructure, a host, a container, a setting or a provider's console lands in the code that owns it, in the same session, so the next run of that code keeps it instead of quietly undoing it.

- **Terraform first.** If Terraform manages the thing, or runs the script that sets it up (infra's `infra/terraform/cluster.tf` jobs run the tower and worker setup scripts), change that code and apply it the normal way. If it isn't managed yet and could be, bring it under Terraform as part of the fix.
- **A live change is half a fix.** When an outage forces a live change first (`docker update`, a console toggle, an edited file on a host), make the same change in code before the session ends, commit it, and say that both happened. A live change with no commit is a bug waiting for the next apply.
- **Never edit a dashboard, host or console alone.** If it can't be expressed in code yet, write down exactly what was changed and why, and treat bringing it under code as open work.
- **Infrastructure lives in [ailio-technologies-inc/infra](https://github.com/ailio-technologies-inc/infra).** A fix to the cluster, a host, DNS, Cloudflare or another provider goes there, even when the symptom showed up in this repo.
