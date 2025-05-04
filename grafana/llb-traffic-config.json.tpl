{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": {
          "type": "grafana",
          "uid": "-- Grafana --"
        },
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "target": {
          "limit": 100,
          "matchAny": false,
          "tags": [],
          "type": "dashboard"
        },
        "type": "dashboard"
      }
    ]
  },
  "editable": true,
  "fiscalYearStartMonth": 0,
  "graphTooltip": 0,
  "id": 3,
  "links": [],
  "liveNow": false,
  "panels": [
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 0
      },
      "id": 2,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "textMode": "auto"
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"lbAttr\"\n| summarize \"total_count\"=count() by \"serviceArguments\"\n| project \"total_count\"\n",
          "url": "http://${loxilb}/netlox/v1/config/loadbalancer/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of LB Policies",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 4,
        "y": 0
      },
      "id": 8,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "textMode": "auto"
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"Attr\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/endpoint/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of LB Endpoints",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 8,
        "y": 0
      },
      "id": 9,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "textMode": "auto"
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"Attr\"\n| where \"currState\" == 'ok'\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/endpoint/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of LB Healthy Endpoints",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 12,
        "x": 12,
        "y": 0
      },
      "id": 14,
      "options": {
        "footer": {
          "enablePagination": false,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"Attr\"\n| project \"VIP\"=\"vip\", \"Instance\"=\"instance\",\"State\"=\"state\",\"Sync\"=\"sync\"\n| order by \"VIP\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/cistate/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "HA State Table",
      "type": "table"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 4
      },
      "id": 10,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "textMode": "auto"
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"Attr\"\n| where \"currState\" != 'ok'\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/endpoint/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of LB UnHealthy Endpoints",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 4,
        "y": 4
      },
      "id": 11,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "textMode": "auto"
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"polAttr\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/policy/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of QoS Rules",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 8,
        "y": 4
      },
      "id": 12,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "textMode": "auto"
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"mirrAttr\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/mirror/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of Mirror Rules",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 12,
        "x": 12,
        "y": 4
      },
      "id": 6,
      "options": {
        "footer": {
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "simple",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"Attr\"\n| project \"Name\"=\"name\",\"IP\"=\"hostName\",\"Probe Port\"=\"probePort\",\"Probe Type\"=\"probeType\",\"State\"=\"currState\"\n| order by \"Name\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/params",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "LB Configuration Parameters",
      "type": "table"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 18,
        "w": 12,
        "x": 0,
        "y": 8
      },
      "id": 18,
      "options": {
        "color": "blue",
        "iteration": 7,
        "labelSize": 14,
        "monochrome": false,
        "nodeColor": "grey",
        "nodePadding": 30,
        "nodeWidth": 30
      },
      "targets": [
        {
          "columns": [],
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"lb_rule_interaction_bytes\"\n| project \"Source\"=\"sip\",\"Service\"=\"service\",\"Destiantion\"=\"dip\",\"Traffic\"=\"value\"\n| order by \"Traffic\" desc\n| limit 10\n\n",
          "url": "http://${loxilb}/netlox/v1/metrics/lbprocessedtraffic",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Top 10 Traffic pair ",
      "type": "netsage-sankey-panel"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "gridPos": {
        "h": 18,
        "w": 12,
        "x": 12,
        "y": 8
      },
      "id": 20,
      "targets": [
        {
          "columns": [],
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"nodes\"",
          "url": "http://${loxilb}/netlox/v1/nodegraph/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        },
        {
          "columns": [],
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "hide": false,
          "parser": "uql",
          "refId": "B",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"edges\"",
          "url": "http://${loxilb}/netlox/v1/nodegraph/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Service Graph",
      "type": "nodeGraph"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "LB_Port"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 168
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 26
      },
      "id": 7,
      "options": {
        "footer": {
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true,
        "sortBy": []
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"lbAttr\"\n| mv-expand \"endpoint\"=\"endpoints\"\n| project \"LB_VIP\"=\"serviceArguments.externalIP\", \"LB_Port\"=\"serviceArguments.port\", \"LB_Protocol\"=\"serviceArguments.protocol\", \"LB_Timeout\"=\"serviceArguments.inactiveTimeOut\", \"endpoint_ip\"=\"endpoint.endpointIP\", \"endpoint_targetPort\"=\"endpoint.targetPort\", \"endpoint_state\"=\"endpoint.state\", \"endpoint_weight\"=\"endpoint.weight\"\n",
          "url": "http://${loxilb}/netlox/v1/config/loadbalancer/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "LB Policy Table",
      "type": "table"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 24,
        "x": 0,
        "y": 34
      },
      "id": 4,
      "options": {
        "footer": {
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"Attr\"\n| project \"Name\"=\"name\",\"IP\"=\"hostName\",\"Probe Port\"=\"probePort\",\"Probe Type\"=\"probeType\",\"State\"=\"currState\"\n| order by \"Name\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/endpoint/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "LB Endpoint Table",
      "type": "table"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 11,
        "w": 24,
        "x": 0,
        "y": 43
      },
      "id": 13,
      "options": {
        "footer": {
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"ctAttr\"\n| project \"Source IP\"=\"sourceIP\", \"Destination IP\"=\"destinationIP\", \"Source Port\"=\"sourcePort\", \"Destination Port\"=\"destinationPort\", \"Protocol\"=\"protocol\", \"Server Name\"=\"servName\", \"CT State\"=\"conntrackState\", \"CT Act\"=\"conntrackAct\", \"Bytes\"=\"bytes\", \"Packets\"=\"packets\"\n\n",
          "url": "http://${loxilb}/netlox/v1/config/conntrack/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Connection Track Table",
      "type": "table"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 0,
        "y": 54
      },
      "id": 15,
      "options": {
        "footer": {
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"polAttr\"\n| project \"ID\"=\"policyIdent\",\"Type\"=\"policyInfo.type\",\"Committed Rate\"=\"policyInfo.committedInfoRate\", \"Peak Rate\"=\"policyInfo.peakInfoRate\", \"Block Size\"=\"policyInfo.committedBlkSize\", \"Excess Block Size\"=\"policyInfo.excessBlkSize\", \"Target Attachment\"=\"targetObject.attachment\", \"Target Policy Name\"=\"targetObject.polObjName\"\n| order by \"ID\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/policy/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "QoS Configuration Table",
      "type": "table"
    },
    {
      "datasource": {
        "type": "yesoreyeram-infinity-datasource",
        "uid": "your-uid"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "displayMode": "auto",
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 12,
        "y": 54
      },
      "id": 16,
      "options": {
        "footer": {
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true
      },
      "pluginVersion": "9.3.6",
      "targets": [
        {
          "columns": [],
          "data": "{}",
          "datasource": {
            "type": "yesoreyeram-infinity-datasource",
            "uid": "your-uid"
          },
          "filters": [],
          "format": "table",
          "global_query_id": "",
          "parser": "uql",
          "refId": "A",
          "root_selector": "",
          "source": "url",
          "type": "json",
          "uql": "parse-json\n| scope \"mirrAttr\"\n| project \"ID\"=\"mirrorIdent\",\"Type\"=\"mirrorInfo.type\",\"Port\"=\"mirrorInfo.port\", \"VLAN\"=\"mirrorInfo.vlan\", \"Source IP\"=\"mirrorInfo.sourceIP\", \"Destination IP\"=\"mirrorInfo.remoteIP\", \"Tunnel ID\"=\"mirrorInfo.tunnelID\", \"Target Policy Name\"=\"targetObject.mirrObjName\"\n| order by \"ID\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/mirror/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Mirror Configuration Table",
      "type": "table"
    }
  ],
  "refresh": false,
  "schemaVersion": 37,
  "style": "dark",
  "tags": [],
  "templating": {
    "list": [
      {
        "current": {
          "selected": false,
          "text": "your-master:11111",
          "value": "your-master:11111"
        },
        "description": "loxilb",
        "hide": 0,
        "includeAll": false,
        "label": "loxilb",
        "multi": false,
        "name": "loxilb",
        "options": [
          {
            "selected": true,
            "text": "your-master:11111",
            "value": "your-master:11111"
          },
          {
            "selected": true,
            "text": "your-backup:11111",
            "value": "your-backup:11111"
          }
        ],
        "query": "your-master:11111,your-backup:11111",
        "queryValue": "",
        "skipUrlSync": false,
        "type": "custom"
      }
    ]
  },
  "time": {
    "from": "now-12h",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "LoxiLB Traffic Management",
  "uid": "g9ptK1ASa",
  "version": 1,
  "weekStart": ""
}
