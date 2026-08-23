___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_rooni_consent_banner",
  "version": 1,
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
  "description": "Loads Trust Signal cookie banner for your website. Handles GDPR / CCPA consent, Google Consent Mode v2 defaults, and the preference centre - all configurable in your Rooni dashboard.",
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
        "errorMessage": "Website ID should be the identifier shown in your Rooni dashboard (Websites → Install)."
      }
    ],
    "help": "Find this in your Rooni dashboard under Websites → Install. It looks like a UUID."
  },
  {
    "type": "TEXT",
    "name": "scriptOrigin",
    "displayName": "Script Origin",
    "simpleValueType": true,
    "defaultValue": "https://app.rooni.io",
    "help": "Base URL where the Rooni CMP is served. Leave the default unless you self-host or use a custom domain."
  },
  {
    "type": "GROUP",
    "name": "consentDefaults",
    "displayName": "Google Consent Mode v2 — Defaults",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "setDefaultConsent",
        "checkboxText": "Set default consent state (denied) before banner loads",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Recommended. Fires gtag(\u0027consent\u0027,\u0027default\u0027, {...:\u0027denied\u0027}) so Google tags wait for the user\u0027s choice."
      },
      {
        "type": "CHECKBOX",
        "name": "waitForUpdate",
        "checkboxText": "Wait up to 500ms for visitor\u0027s stored consent before tags fire",
        "simpleValueType": true,
        "defaultValue": true,
        "enablingConditions": [
          {
            "paramName": "setDefaultConsent",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advanced",
    "displayName": "Advanced",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "asyncLoad",
        "checkboxText": "Load script asynchronously",
        "simpleValueType": true,
        "defaultValue": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const setDefaultConsentState = require('setDefaultConsentState');
const log = require('logToConsole');

const id = data.websiteId;
const origin = data.scriptOrigin || 'https://app.rooni.io';
const url = origin + '/cmp/' + id + '.js';

if (data.setDefaultConsent) {
  setDefaultConsentState({
    'ad_storage': 'denied',
    'ad_user_data': 'denied',
    'ad_personalization': 'denied',
    'analytics_storage': 'denied',
    'functionality_storage': 'granted',
    'security_storage': 'granted',
    'wait_for_update': data.waitForUpdate ? 500 : 0
  });
}

const onSuccess = () => {
  log('[Rooni] CMP loaded:', url);
  data.gtmOnSuccess();
};
const onFailure = () => {
  log('[Rooni] CMP failed to load:', url);
  data.gtmOnFailure();
};

injectScript(url, onSuccess, onFailure, 'rooni-cmp-' + id);


___WEB_PERMISSIONS___

[
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
- name: Injects the CMP script from the default origin
  code: |-
    mock('injectScript', (url, onSuccess) => {
      assertThat(url).isEqualTo('https://app.rooni.io/cmp/11111111-2222-3333-4444-555555555555.js');
      onSuccess();
    });

    runCode(mockData);

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Honours a custom script origin
  code: |-
    let injectedUrl;
    mock('injectScript', (url, onSuccess) => {
      injectedUrl = url;
      onSuccess();
    });

    const testData = mockData;
    testData.scriptOrigin = 'https://cmp.example.com';

    runCode(testData);

    assertThat(injectedUrl).isEqualTo('https://cmp.example.com/cmp/11111111-2222-3333-4444-555555555555.js');
    assertApi('gtmOnSuccess').wasCalled();
- name: Sets Consent Mode v2 defaults to denied
  code: |-
    let consentArgs;
    mock('setDefaultConsentState', (args) => {
      consentArgs = args;
    });
    mock('injectScript', (url, onSuccess) => {
      onSuccess();
    });

    runCode(mockData);

    assertThat(consentArgs.ad_storage).isEqualTo('denied');
    assertThat(consentArgs.ad_user_data).isEqualTo('denied');
    assertThat(consentArgs.ad_personalization).isEqualTo('denied');
    assertThat(consentArgs.analytics_storage).isEqualTo('denied');
    assertThat(consentArgs.functionality_storage).isEqualTo('granted');
    assertThat(consentArgs.security_storage).isEqualTo('granted');
    assertThat(consentArgs.wait_for_update).isEqualTo(500);
- name: Skips consent defaults when the option is unchecked
  code: |-
    let called = false;
    mock('setDefaultConsentState', () => {
      called = true;
    });
    mock('injectScript', (url, onSuccess) => {
      onSuccess();
    });

    const testData = mockData;
    testData.setDefaultConsent = false;

    runCode(testData);

    assertThat(called).isEqualTo(false);
    assertApi('gtmOnSuccess').wasCalled();
- name: Uses no wait_for_update delay when the wait option is unchecked
  code: |-
    let consentArgs;
    mock('setDefaultConsentState', (args) => {
      consentArgs = args;
    });
    mock('injectScript', (url, onSuccess) => {
      onSuccess();
    });

    const testData = mockData;
    testData.waitForUpdate = false;

    runCode(testData);

    assertThat(consentArgs.wait_for_update).isEqualTo(0);
- name: Reports failure when the script cannot load
  code: |-
    mock('injectScript', (url, onSuccess, onFailure) => {
      onFailure();
    });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
setup: |-
  const mockData = {
    websiteId: '11111111-2222-3333-4444-555555555555',
    scriptOrigin: 'https://app.rooni.io',
    setDefaultConsent: true,
    waitForUpdate: true,
    asyncLoad: true
  };


___NOTES___

Created by Rooni. Configure consent purposes, banner appearance and the preference centre in your Rooni dashboard at https://app.rooni.io.
Fire this tag on the "Consent Initialization - All Pages" trigger so the Consent Mode defaults are set before any other tag runs.


