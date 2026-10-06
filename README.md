# Trust Signal — Google Tag Manager Template

**Version 3** — Official Google Tag Manager custom tag template for the **Trust Signal** consent banner by [Rooni](https://rooni.io).

It loads the Trust Signal consent banner and preference centre on your site, sets Google Consent Mode v2 defaults before any other tag fires, and keeps every banner setting — purposes, wording, appearance, geo rules — in your Rooni dashboard rather than in GTM.

## Install from the Community Template Gallery

1. In GTM, go to **Templates → Tag Templates → Search Gallery**.
2. Search for **Trust Signal** or **Rooni**.
3. Select the **Trust Signal** template and add it to your workspace.
4. Create a new tag using the template, paste your **Website ID**, and set the trigger to **Consent Initialization — All Pages**.
5. Publish the container.

## Manual install (before gallery approval)

1. In GTM, go to **Templates → Tag Templates → New → ⋮ → Import**, and select `template.tpl`.
2. Create a new tag using the **Trust Signal** template.
3. Paste your **Website ID**, found in the Rooni dashboard under **Websites → Install**.
4. Set the trigger to **Consent Initialization — All Pages**. This is required: the Consent Mode defaults must be set before any other tag runs.
5. Publish the container.

## Parameters

| Parameter | Default | Description |
| --- | --- | --- |
| Website ID | — | Required. The website identifier from your Rooni dashboard. |
| Global defaults | Advertising, analytics and personalization denied; functionality and security granted | Always-visible fallback values applied immediately on Consent Initialization. |
| Wait for update | `500` | Milliseconds Google tags wait for the visitor's choice. |
| Override website region rules in GTM | off | Reveals an optional table for GTM-only regional defaults. Normally the published website framework and geo rules are used automatically. |
| Redact ads data | off | Sets `ads_data_redaction`. |
| Pass through URLs | off | Sets `url_passthrough`. |
| Script origin | `https://app.rooni.io` | Base URL serving the banner. |

## What the tag does

1. Sets the visible global fallback with `setDefaultConsentState` synchronously on Consent Initialization. Optional GTM regional rows are applied first when enabled.
2. Reads the visitor's saved choice (`cs_consent` cookie) and applies it immediately with `updateConsentState`.
3. Loads `<Script origin>/cmp/<Website ID>.js`. The hosted CMP resolves that website's published framework and geographic rules automatically, then routes saved and new choices through the template's `updateConsentState` bridge (no `gtag('consent', …)` commands).
4. Calls `gtmOnSuccess()` / `gtmOnFailure()`.

Consent types: `ad_storage`, `ad_user_data`, `ad_personalization`, `analytics_storage`, `functionality_storage`, `personalization_storage`, `security_storage` (always granted).

## Permissions requested

- `access_consent` — write access to the seven consent types.
- `get_cookies` — read only the `cs_consent` cookie.
- `access_globals` — `__ConsentShieldGtmBridge` and `__ConsentShieldGtmTemplate` (banner ↔ template bridge).
- `write_data_layer` — `ads_data_redaction`, `url_passthrough`.
- `inject_script` — limited to `https://app.rooni.io/cmp/*`.
- `logging` — debug only.

## Changelog

See `metadata.yaml`.

## Support

- Website: https://rooni.io
- Dashboard: https://app.rooni.io
- Issues: open an issue on this repository.

## License

Apache License 2.0 — see `LICENSE`.
