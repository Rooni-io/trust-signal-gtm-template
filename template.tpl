___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_rooni_consent_banner",
  "version": 3,
  "securityGroups": [],
  "displayName": "Trust Signal",
  "categories": [
    "UTILITY",
    "PERSONALIZATION"
  ],
  "brand": {
    "id": "brand_rooni",
    "displayName": "Rooni",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADRklEQVR4nN1VTWhcVRT+zrn3TTrz2gaLEOwi1UmkELB0Iw3djAhFsHbaoLNyIbppcaF06Sp0a+lGdGFW7gckkyKCUohQEBd1URApMk2CEAULNpq/ybv3fF28yXTmTTPZ98Bb3HvP+b5zvnPevcDzaAo0HGo139uZuJBWqpdvpdPvrh+tXrk24F2reWBeAcizwJ652bPT9WOViPdAva7qXiMjIArSlhFxa3tl8TsALOD1r4cJKpNzLyGRM6BdFGFdNDlFGsBggAhAiiYKALR4j2QToj+O0bf/fdjcGFlBWq3/TMiMqD8uIiAjwBhzP9E8OxqICIEXTRTiQMtA4pGY3d5aaX3Uj+kH2NTPggYwM5oYhAqIA0CQEaJONHEAHC3ALNsQhB2AFLgXKThfrGCAgD0ZRCHQrqQRECeu5Gjhf1pYBnGHgrtJkPbG2uNN4KeAU7UjZRs/MZKgK0M/ZRRNHC3uMoYvQ+RXnbXW6v7pC9XG+LGXx6eCvHMcXpUm64cQFMFLzhiWxeKnWyu37wNAWr30JsQ3AM52sDcpTk6oeAAe5N7vAGZGEJC5RAiiJU8LC9vtxasAUK7W51T0MxF9HaqgGQSWh9AiYCpAZ3QFRIDQiZa82d7CdnvpKiYupJWj6deq7n2QeZ9CbwAEeaPyTxhGEwj+Eh2bNMvubLeXrqWvXJqgupa65Bxj5+m49gagPxQg5J8iwUBTSTykxY6BH2KmkVDkW3XJOYZOlo9rcQj6aheBUX4dSSAid4Hsi912689KZ/dz9UfOM3QyiCQHAO9HKi0aYd8PnfQvyqfrJ8txb3Mz8ycT73/LO4gDL7Ju8lE0UVq4t9UuzQLN2H860IOdB0vrOwDSqfpNUS+MmUEOuRApBlEXo9wsggMFiYCGAyAgzuZZs+hfAGcmvpQwdH7YXV1sduNHEcwQAMzwCS38B/UewNDo9cBdklgMDxjHPsg3m0MZFQhuGDAvO6tLvwjj2yQfiSY+v4/2y6EBNPFjiVm8b7Hz1vZa829gXgBYkeAAfRsOaMZS9eKrXksLIvpGF5cQl0tHfuMDr2+stR7nL9qNIfBDrKenlqcvf5xWr/yRTs/FytTccnmqXn/qN3/Qv/Gc2BOqAoSZoTUftAAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Trust Signal consent management platform (CMP) by Rooni. Sets Google Consent Mode v2 defaults (with per-region settings), updates consent through the Tag Manager consent APIs when visitors choose, and loads the banner and preference centre configured in your Rooni dashboard.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "websiteId",
    "displayName": "Website ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[0-9a-fA-F-]{8,64}$"
        ],
        "errorMessage": "Website ID should be the identifier shown in your Rooni dashboard (Websites \u2192 Install)."
      }
    ],
    "help": "Find this in your Rooni dashboard under Websites \u2192 Install. The published framework and geographic rules for this website are loaded automatically."
  },
  {
    "type": "GROUP",
    "name": "consentDefaults",
    "displayName": "Google Consent Mode v2 \u2014 Global defaults",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "LABEL",
        "name": "globalDefaultsHelp",
        "displayName": "These privacy-safe values are applied immediately on Consent Initialization while TrustSignal loads the published configuration for the Website ID."
      },
      {
        "type": "SELECT",
        "name": "ad_storage",
        "displayName": "ad_storage",
        "simpleValueType": true,
        "defaultValue": "denied",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "ad_user_data",
        "displayName": "ad_user_data",
        "simpleValueType": true,
        "defaultValue": "denied",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "ad_personalization",
        "displayName": "ad_personalization",
        "simpleValueType": true,
        "defaultValue": "denied",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "analytics_storage",
        "displayName": "analytics_storage",
        "simpleValueType": true,
        "defaultValue": "denied",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "functionality_storage",
        "displayName": "functionality_storage",
        "simpleValueType": true,
        "defaultValue": "granted",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "personalization_storage",
        "displayName": "personalization_storage",
        "simpleValueType": true,
        "defaultValue": "denied",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "security_storage",
        "displayName": "security_storage",
        "simpleValueType": true,
        "defaultValue": "granted",
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "Wait for update (milliseconds)",
        "simpleValueType": true,
        "defaultValue": "500",
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ],
        "help": "How long Google tags wait for the visitor's consent before firing. 500 is recommended."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "regionalOverrides",
    "displayName": "Regional overrides",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "overrideWebsiteRegions",
        "checkboxText": "Override website region rules in GTM",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Leave off to use the framework and region rules published for this Website ID. Turn on only when this GTM container needs its own initial consent defaults."
      },
      {
        "type": "PARAM_TABLE",
        "name": "regionalDefaultSettings",
        "displayName": "GTM regional defaults",
        "help": "Add one row per region using ISO 3166-2 codes separated by commas (for example FR, DE, US-CA). These rows override the global defaults above for matching regions.",
        "paramTableColumns": [
          {
            "param": {
              "defaultValue": "",
              "displayName": "Region codes",
              "name": "region",
              "type": "TEXT",
              "simpleValueType": true
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "SELECT",
              "name": "ad_storage",
              "displayName": "ad_storage",
              "simpleValueType": true,
              "defaultValue": "denied",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "ad_user_data",
              "displayName": "ad_user_data",
              "simpleValueType": true,
              "defaultValue": "denied",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "ad_personalization",
              "displayName": "ad_personalization",
              "simpleValueType": true,
              "defaultValue": "denied",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "analytics_storage",
              "displayName": "analytics_storage",
              "simpleValueType": true,
              "defaultValue": "denied",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "functionality_storage",
              "displayName": "functionality_storage",
              "simpleValueType": true,
              "defaultValue": "granted",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "personalization_storage",
              "displayName": "personalization_storage",
              "simpleValueType": true,
              "defaultValue": "denied",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "security_storage",
              "displayName": "security_storage",
              "simpleValueType": true,
              "defaultValue": "granted",
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "granted",
                  "displayValue": "Granted"
                }
              ]
            },
            "isUnique": false
          }
        ],
        "enablingConditions": [
          {
            "paramName": "overrideWebsiteRegions",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "other",
    "displayName": "Other settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "adsDataRedaction",
        "checkboxText": "Redact ads data when ad_storage is denied",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Sets <code>ads_data_redaction</code>. Ad click identifiers are removed from requests while ad_storage is denied."
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "Pass ad click information through URLs",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Sets <code>url_passthrough</code> so ad click and analytics information is kept in page URLs while cookies are denied."
      },
      {
        "type": "TEXT",
        "name": "scriptOrigin",
        "displayName": "Script origin",
        "simpleValueType": true,
        "defaultValue": "https://app.rooni.io",
        "help": "Base URL that serves the Trust Signal banner. Leave the default unless Rooni has given you a different address."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const getCookieValues = require('getCookieValues');
const injectScript = require('injectScript');
const setInWindow = require('setInWindow');
const gtagSet = require('gtagSet');
const JSON = require('JSON');
const makeNumber = require('makeNumber');
const decodeUriComponent = require('decodeUriComponent');
const log = require('logToConsole');

// Consent types managed by Trust Signal. security_storage remains granted.
const CONSENT_TYPES = ['ad_storage', 'ad_user_data', 'ad_personalization', 'analytics_storage', 'functionality_storage', 'personalization_storage'];
const COOKIE_NAME = 'cs_consent';

const waitMs = makeNumber(data.waitForUpdate);
const wait = waitMs >= 0 ? waitMs : 500;

const splitRegions = (value) => {
  if (!value) return [];
  return value.split(',').map((r) => r.trim()).filter((r) => r.length > 0);
};

const pick = (value, fallback) => (value === 'granted' || value === 'denied') ? value : fallback;

// 1. Global fallback, set synchronously on Consent Initialization.
const globalState = {
  ad_storage: pick(data.ad_storage, 'denied'),
  ad_user_data: pick(data.ad_user_data, 'denied'),
  ad_personalization: pick(data.ad_personalization, 'denied'),
  analytics_storage: pick(data.analytics_storage, 'denied'),
  functionality_storage: pick(data.functionality_storage, 'granted'),
  personalization_storage: pick(data.personalization_storage, 'denied'),
  security_storage: pick(data.security_storage, 'granted'),
  wait_for_update: wait
};

// Optional GTM-only regional defaults. These run before the global fallback,
// following Google's regional precedence rules. Normal installs leave this
// disabled and use the Website ID's published framework and geo rules.
const rows = data.overrideWebsiteRegions ? (data.regionalDefaultSettings || []) : [];
rows.forEach((row) => {
  const state = {
    ad_storage: pick(row.ad_storage, globalState.ad_storage),
    ad_user_data: pick(row.ad_user_data, globalState.ad_user_data),
    ad_personalization: pick(row.ad_personalization, globalState.ad_personalization),
    analytics_storage: pick(row.analytics_storage, globalState.analytics_storage),
    functionality_storage: pick(row.functionality_storage, globalState.functionality_storage),
    personalization_storage: pick(row.personalization_storage, globalState.personalization_storage),
    security_storage: pick(row.security_storage, globalState.security_storage),
    wait_for_update: wait
  };
  const regions = splitRegions(row.region);
  if (regions.length > 0) {
    state.region = regions;
    setDefaultConsentState(state);
  } else {
    log('[Trust Signal] Ignored a regional override with no region code.');
  }
});
setDefaultConsentState(globalState);

// 2. Optional privacy settings.
if (data.adsDataRedaction) gtagSet('ads_data_redaction', true);
if (data.urlPassthrough) gtagSet('url_passthrough', true);

// 3. Consent update — converts granted purposes to a consent mode update.
const toConsentState = (purposes) => {
  const granted = {};
  (purposes || []).forEach((p) => { granted[p] = true; });
  const state = { security_storage: 'granted' };
  CONSENT_TYPES.forEach((type) => {
    state[type] = granted[type] ? 'granted' : 'denied';
  });
  return state;
};

// Returning visitors: apply their saved choice immediately so tags on this
// page already see it.
const saved = getCookieValues(COOKIE_NAME)[0];
if (saved) {
  const parsed = JSON.parse(decodeUriComponent(saved));
  if (parsed && parsed.purposes) {
    updateConsentState(toConsentState(parsed.purposes));
  }
}

// New choices: the banner calls this bridge so every update goes through
// updateConsentState instead of gtag('consent', 'update').
setInWindow('__ConsentShieldGtmBridge', (purposes) => {
  updateConsentState(toConsentState(purposes));
}, true);
setInWindow('__ConsentShieldGtmTemplate', data.overrideWebsiteRegions ? 'regional_override' : true, true);

// 4. Load the banner.
const origin = data.scriptOrigin || 'https://app.rooni.io';
const url = origin + '/cmp/' + data.websiteId + '.js';
injectScript(url, () => {
  log('[Trust Signal] CMP loaded:', url);
  data.gtmOnSuccess();
}, () => {
  log('[Trust Signal] CMP failed to load:', url);
  data.gtmOnFailure();
}, 'rooni-cmp-' + data.websiteId);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "cs_consent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__ConsentShieldGtmBridge"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__ConsentShieldGtmTemplate"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://app.rooni.io/cmp/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Sets the configured privacy-safe global defaults
  code: |-
    const calls = [];
    mock('setDefaultConsentState', (s) => { calls.push(s); });
    mock('injectScript', (url, onSuccess) => { onSuccess(); });
    runCode(mockData);
    assertThat(calls.length).isEqualTo(1);
    assertThat(calls[0].ad_storage).isEqualTo('denied');
    assertThat(calls[0].ad_user_data).isEqualTo('denied');
    assertThat(calls[0].ad_personalization).isEqualTo('denied');
    assertThat(calls[0].analytics_storage).isEqualTo('denied');
    assertThat(calls[0].security_storage).isEqualTo('granted');
    assertThat(calls[0].wait_for_update).isEqualTo(500);
    assertThat(calls[0].region).isUndefined();
- name: Applies region-specific defaults plus a global fallback
  code: |-
    const calls = [];
    mock('setDefaultConsentState', (s) => { calls.push(s); });
    mock('injectScript', (url, onSuccess) => { onSuccess(); });
    const testData = mockData;
    testData.overrideWebsiteRegions = true;
    testData.regionalDefaultSettings = [{ region: 'US-CA, US-NY', ad_storage: 'granted', ad_user_data: 'granted', ad_personalization: 'granted', analytics_storage: 'granted', functionality_storage: 'granted', personalization_storage: 'granted', security_storage: 'granted' }];
    runCode(testData);
    assertThat(calls.length).isEqualTo(2);
    assertThat(calls[0].region).isEqualTo(['US-CA', 'US-NY']);
    assertThat(calls[0].ad_storage).isEqualTo('granted');
    assertThat(calls[1].ad_storage).isEqualTo('denied');
- name: Ignores regional rows when the GTM override is disabled
  code: |-
    const calls = [];
    mock('setDefaultConsentState', (s) => { calls.push(s); });
    mock('injectScript', (url, onSuccess) => { onSuccess(); });
    const testData = mockData;
    testData.regionalDefaultSettings = [{ region: 'FR', ad_storage: 'granted' }];
    runCode(testData);
    assertThat(calls.length).isEqualTo(1);
    assertThat(calls[0].region).isUndefined();
    assertThat(calls[0].ad_storage).isEqualTo('denied');
- name: Updates consent for a returning visitor from the saved choice
  code: |-
    let update;
    mock('getCookieValues', () => ['%7B%22purposes%22%3A%5B%22analytics_storage%22%5D%7D']);
    mock('updateConsentState', (s) => { update = s; });
    mock('injectScript', (url, onSuccess) => { onSuccess(); });
    runCode(mockData);
    assertThat(update.analytics_storage).isEqualTo('granted');
    assertThat(update.ad_storage).isEqualTo('denied');
    assertThat(update.security_storage).isEqualTo('granted');
- name: Does not update consent for a first-time visitor
  code: |-
    mock('getCookieValues', () => []);
    mock('injectScript', (url, onSuccess) => { onSuccess(); });
    runCode(mockData);
    assertApi('updateConsentState').wasNotCalled();
- name: Sets ads data redaction and url passthrough when enabled
  code: |-
    mock('injectScript', (url, onSuccess) => { onSuccess(); });
    const testData = mockData;
    testData.adsDataRedaction = true;
    testData.urlPassthrough = true;
    runCode(testData);
    assertApi('gtagSet').wasCalledWith('ads_data_redaction', true);
    assertApi('gtagSet').wasCalledWith('url_passthrough', true);
- name: Injects the CMP script and reports success
  code: |-
    mock('injectScript', (url, onSuccess) => {
      assertThat(url).isEqualTo('https://app.rooni.io/cmp/11111111-2222-3333-4444-555555555555.js');
      onSuccess();
    });
    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Reports failure when the script cannot load
  code: |-
    mock('injectScript', (url, onSuccess, onFailure) => { onFailure(); });
    runCode(mockData);
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
setup: |-
  const mockData = {
    websiteId: '11111111-2222-3333-4444-555555555555',
    scriptOrigin: 'https://app.rooni.io',
    ad_storage: 'denied',
    ad_user_data: 'denied',
    ad_personalization: 'denied',
    analytics_storage: 'denied',
    functionality_storage: 'granted',
    personalization_storage: 'denied',
    security_storage: 'granted',
    overrideWebsiteRegions: false,
    regionalDefaultSettings: [],
    waitForUpdate: '500',
    adsDataRedaction: false,
    urlPassthrough: false
  };


___NOTES___

Created by Rooni. Configure consent purposes, banner appearance and the preference centre in your Rooni dashboard at https://app.rooni.io.
Fire this tag on the "Consent Initialization - All Pages" trigger so consent defaults are set before any other tag runs.
