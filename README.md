# Dead Man's Switch

This repository contains a GitHub Actions workflow that acts as a **dead man's switch**.

Every day at 01:00, 07:00, and 12:00 UTC, the workflow checks the time elapsed since the last reset. If the deadline passes without a reset, it assumes I'm no longer able to intervene—and it will automatically publish private messages stored elsewhere to a new **public** repository.

To prevent this trigger, I must regularly reset the switch by either:

- Running the reset workflow manually,
- Executing the provided `reset.sh` script, or
- Updating the `last_reset.txt` file.

This ensures that the switch stays alive only with my ongoing activity.

## Final Messages

If triggered, the switch will:

- Sync the final message files from my private Cloudflare R2 bucket,
- Push them to a designated public GitHub repository,
- Make my words, memories, and reflections accessible in case they matter to someone else.

---

> [!NOTE]
> This repo does *not* contain the actual message contents. Those live elsewhere and are only published if the switch is triggered.
