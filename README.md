# Rooni Consent Banner — Google Tag Manager Template

**Version 1** — Official Google Tag Manager custom tag template for the **Rooni Consent Banner** (TrustSignal CMP).

It loads the Rooni consent banner and preference centre on your site, sets Google Consent Mode v2 defaults before any other tag fires, and keeps every banner setting — purposes, wording, appearance, geo rules — in your Rooni dashboard rather than in GTM.

## Setup

1. In GTM, go to **Templates → Tag Templates → New → ⋮ → Import**, and select `template.tpl` (or install "Rooni Consent Banner" from the Community Template Gallery).
2. Create a new tag using the **Rooni Consent Banner** template.
3. Paste your **Website ID**, found in the Rooni dashboard under **Websites → Install**.
4. Set the trigger to **Consent Initialization — All Pages**. This is required: the Consent Mode defaults must be set before any other tag runs.
5. Publish the container.

## Parameters

| Parameter | Default | Description |
| --- | --- | --- |
| Website ID | — | Required. The website identifier from your Rooni dashboard. |
| Script Origin | `https://app.rooni.io` | Base URL serving the CMP. Change only if you self-host or use a custom domain. |
| Set default consent state | on | Fires `gtag('consent','default', …)` with all advertising and analytics storage denied. |
| Wait up to 500ms | on | Sets `wait_for_update: 500` so tags wait for a returning visitor's stored consent. |
| Load script asynchronously | on | Injects the CMP script without blocking rendering. |

## What the tag does

- Sets Consent Mode v2 defaults: `ad_storage`, `ad_user_data`, `ad_personalization`, `analytics_storage` denied; `functionality_storage`, `security_storage` granted.
- Injects `<Script Origin>/cmp/<Website ID>.js`.
- Calls `gtmOnSuccess()` / `gtmOnFailure()` so GTM reports tag status accurately.

## Permissions requested

- `inject_script` — limited to `https://app.rooni.io/cmp/*`.
- `access_consent` — write access to the six Consent Mode v2 types.
- `logging` — debug console output only.

## Support

- Documentation and dashboard: https://app.rooni.io
- Issues: open an issue on this repository.

## License

Apache License 2.0 — see `LICENSE`.
