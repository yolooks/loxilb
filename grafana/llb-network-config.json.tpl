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
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 3,
        "x": 0,
        "y": 0
      },
      "id": 14,
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
          "uql": "parse-json\n| scope \"portAttr\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/port/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of Ports",
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
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 3,
        "x": 3,
        "y": 0
      },
      "id": 5,
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
          "uql": "parse-json\n| scope \"ipAttr\"\n| project \"Name\"=\"dev\",\"IP Address\"=\"ip\",\"Sync\"=\"sync\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/ipv4address/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of Interfaces",
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
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 3,
        "x": 6,
        "y": 0
      },
      "id": 4,
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
          "uql": "parse-json\n| scope \"neighborAttr\"\n| count",
          "url": "http://${loxilb}/netlox/v1/config/neighbor/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number ARP Tables",
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
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 3,
        "x": 9,
        "y": 0
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
          "uql": "parse-json\n| scope \"vlanAttr\"\n| mv-expand \"vlan\"=\"member\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/vlan/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of VLAN Tables",
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
        "h": 7,
        "w": 3,
        "x": 12,
        "y": 0
      },
      "id": 20,
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
          "uql": "parse-json\n| scope \"bgpNeiAttr\"\n| count",
          "url": "http://${loxilb}/netlox/v1/config/bgp/neigh/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number BGP Neighbors",
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
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 3,
        "x": 15,
        "y": 0
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
          "uql": "parse-json\n| scope \"fwAttr\"\n| count\n",
          "url": "http://${loxilb}/netlox/v1/config/firewall/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Number of ACL Tables",
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
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Instance"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 114
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "VIP"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 133
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "State"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 190
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 7,
        "w": 6,
        "x": 18,
        "y": 0
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
        "showHeader": true,
        "sortBy": []
      },
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
          "uql": "parse-json\n| scope \"Attr\"\n| project \"Instance\"=\"instance\",\"VIP\"=\"vip\",\"State\"=\"state\",\"Sync\"=\"sync\"\n",
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
              "options": "Number"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 253
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 24,
        "x": 0,
        "y": 7
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
        "showHeader": true,
        "sortBy": []
      },
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
          "uql": "parse-json\n| scope \"portAttr\"\n| project \"Number\"=\"portNo\",\"Name\"=\"portName\",\"Link\"=\"portHardwareInformation.link\", \"MAC Address\"=\"portHardwareInformation.macAddress\", \"MTU\"=\"portHardwareInformation.mtu\"\n| order by \"Number\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/port/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Port Table",
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
        "y": 16
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
          "uql": "parse-json\n| scope \"ipAttr\"\n| mv-expand \"ip\"=\"ipAddress\"\n| project \"Name\"=\"dev\",\"IP Address\"=\"ip\",\"Sync\"=\"sync\"\n| order by \"Name\" desc\n\n",
          "url": "http://${loxilb}/netlox/v1/config/ipv4address/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Interface Table",
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
        "y": 27
      },
      "id": 17,
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
          "uql": "parse-json\n| scope \"neighborAttr\"\n| project \"IP Address\"=\"ipAddress\",\"MAC Address\"=\"macAddress\",\"Interface\"=\"dev\"\n| order by \"IP Address\" asc",
          "url": "http://${loxilb}/netlox/v1/config/neighbor/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "ARP Table",
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
        "y": 38
      },
      "id": 8,
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
          "uql": "parse-json\n| scope \"routeAttr\"\n| project \"Destination\"=\"destinationIPNet\",\"Flags\"=\"flags\",\"Bytes\"=\"statistic.bytes\",\"Packets\"=\"statistic.packets\"\n| order by \"Flags\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/route/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "Route Table",
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
        "y": 49
      },
      "id": 18,
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
          "uql": "parse-json\n| scope \"fdbAttr\"\n| project \"MAC Address\"=\"macAddress\",\"Interface\"=\"dev\"\n| order by \"MAC Address\" asc",
          "url": "http://${loxilb}/netlox/v1/config/fdb/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "FDB Table",
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
        "y": 60
      },
      "id": 19,
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
          "uql": "parse-json\n| scope \"vlanAttr\"\n| mv-expand \"vlan\"=\"member\"\n| project \"VID\"=\"vid\", \"Name\"=\"dev\", \"Member_Port\"=\"vlan.dev\", \"Member_Tagging\"=\"vlan.tagged\", \"Rx_Bytes\"=\"vlanStatistic.inBytes\", \"Rx_Packets\"=\"vlanStatistic.inPackets\", \"Tx_Bytes\"=\"vlanStatistic.outBytes\", \"Tx_Packets\"=\"vlanStatistic.outPackets\"\n",
          "url": "http://${loxilb}/netlox/v1/config/vlan/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "VLAN Table",
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
        "y": 71
      },
      "id": 12,
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
          "uql": "parse-json\n| scope \"bgpNeiAttr\"\n| project \"Remote AS\"=\"remoteAs\", \"IP Address\"=\"ipAddress\", \"State\"=\"state\", \"Up/Down Time\"=\"updowntime\"\n| order by \"Remote AS\" asc\n",
          "url": "http://${loxilb}/netlox/v1/config/bgp/neigh/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "BGP Neighbor Table",
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
        "y": 82
      },
      "id": 21,
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
          "uql": "parse-json\n| scope \"fwAttr\"\n| project \"Match_Port\"=\"ruleArguments.portName\", \"Match_Protocol\"=\"ruleArguments.protocol\", \"Match_Source_IP\"=\"ruleArguments.sourceIP\", \"Match_Destination_IP\"=\"ruleArguments.destinationIP\", \"Match_Source_Port_Min\"=\"ruleArguments.minSourcePort\", \"Match_Source_Port_Max\"=\"ruleArguments.maxSourcePort\", \"Match_Destination_Port_Min\"=\"ruleArguments.minDestinationPort\", \"Match_Destination_Port_Max\"=\"ruleArguments.maxDestinationPort\", \"Action_Drop\"=\"opts.drop\", \"Action_Trap\"=\"opts.trap\", \"Action_Redirect\"=\"opts.redirect\", \"Action_Redirect_Port\"=\"opts.redirectPortName\", \"Action_Allow\"=\"opts.allow\", \"Action_Mark\"=\"opts.fwMark\"\n",
          "url": "http://${loxilb}/netlox/v1/config/firewall/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "ACL Table",
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
        "y": 93
      },
      "id": 13,
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
          "uql": "parse-json\n| scope \"Attr\"\n| project \"Instance\"=\"instance\", \"Source IP\"=\"sourceIP\", \"Destination IP\"=\"remoteIp\", \"Port\"=\"port\", \"Interval\"=\"interval\", \"Retry Counts\"=\"retryCount\", \"State\"=\"state\"\n",
          "url": "http://${loxilb}/netlox/v1/config/bfd/all",
          "url_options": {
            "data": "",
            "method": "GET"
          }
        }
      ],
      "title": "BFD Table",
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
            "selected": false,
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
    "from": "now-6h",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "LoxiLB Network View",
  "uid": "COYbD1AIa",
  "version": 1,
  "weekStart": ""
}
