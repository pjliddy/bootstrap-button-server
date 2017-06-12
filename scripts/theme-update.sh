#!/bin/bash

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "theme": {
      "vars": [
       {
         "category": "Core",
         "subcategory": "Brand Colors",
         "variable": "$brand-primary",
         "type": "color",
         "value": "darken(#428bca, 6.5%)"
       },
       {
         "category": "Core",
         "subcategory": "Brand Colors",
         "variable": "$brand-info",
         "type": "color",
         "value": "#5bc0de"
       },
       {
         "category": "Core",
         "subcategory": "Brand Colors",
         "variable": "$brand-success",
         "type": "color",
         "value": "#5cb85c"
       },
       {
         "category": "Core",
         "subcategory": "Brand Colors",
         "variable": "$brand-warning",
         "type": "color",
         "value": "#f0ad4e"
       },
       {
         "category": "Core",
         "subcategory": "Brand Colors",
         "variable": "$brand-danger",
         "type": "color",
         "value": "#d9534f"
       },
       {
         "category": "Core",
         "subcategory": "Grays",
         "variable": "$gray-base",
         "type": "color",
         "value": "#000"
       },
       {
         "category": "Core",
         "subcategory": "Grays",
         "variable": "$gray-darker",
         "type": "color",
         "value": "lighten($gray-base, 13.5%)"
       },
       {
         "category": "Core",
         "subcategory": "Grays",
         "variable": "$gray-dark",
         "type": "color",
         "value": "lighten($gray-base, 20%)"
       },
       {
         "category": "Core",
         "subcategory": "Grays",
         "variable": "$gray",
         "type": "color",
         "value": "lighten($gray-base, 33.5%)"
       },
       {
         "category": "Core",
         "subcategory": "Grays",
         "variable": "$gray-light",
         "type": "color",
         "value": "lighten($gray-base, 46.7%)"
       },
       {
         "category": "Core",
         "subcategory": "Grays",
         "variable": "$gray-lighter",
         "type": "color",
         "value": "lighten($gray-base, 93.5%)"
       },
       {
         "category": "Core",
         "subcategory": "Links",
         "variable": "$link-color",
         "type": "color",
         "value": "$brand-primary"
       },
       {
         "category": "Core",
         "subcategory": "Links",
         "variable": "$link-hover-color",
         "type": "color",
         "value": "darken($link-color, 15%)"
       },
       {
         "category": "Core",
         "subcategory": "Links",
         "variable": "$link-hover-decoration",
         "type": "attribute",
         "value": "underline"
       },
       {
         "category": "Core",
         "subcategory": "Cursor",
         "variable": "$cursor-disabled",
         "type": "attribute",
         "value": "not-allowed"
       },
       {
         "category": "Geometry",
         "subcategory": "Border Radius",
         "variable": "$border-radius-base",
         "type": "size",
         "value": "4px"
       },
       {
         "category": "Geometry",
         "subcategory": "Border Radius",
         "variable": "$border-radius-large",
         "type": "size",
         "value": "6px"
       },
       {
         "category": "Geometry",
         "subcategory": "Border Radius",
         "variable": "$border-radius-small",
         "type": "size",
         "value": "3px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-base-horizontal",
         "type": "size",
         "value": "12px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-base-vertical",
         "type": "size",
         "value": "6px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-large-horizontal",
         "type": "size",
         "value": "16px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-large-vertical",
         "type": "size",
         "value": "10px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-small-horizontal",
         "type": "size",
         "value": "10px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-small-vertical",
         "type": "size",
         "value": "5px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-xs-horizontal",
         "type": "size",
         "value": "5px"
       },
       {
         "category": "Geometry",
         "subcategory": "Padding",
         "variable": "$padding-xs-vertical",
         "type": "size",
         "value": "1px"
       },
       {
         "category": "Type",
         "subcategory": "Font Family",
         "variable": "$font-family-base",
         "type": "font-family",
         "value": "$font-family-sans-serif"
       },
       {
         "category": "Type",
         "subcategory": "Font Family",
         "variable": "$font-family-sans-serif",
         "type": "font-family",
         "value": "\"Helvetica Neue\", Helvetica, Arial, sans-serif"
       },
       {
         "category": "Type",
         "subcategory": "Font Family",
         "variable": "$font-family-serif",
         "type": "font-family",
         "value": "Georgia, \"Times New Roman\", Times, serif"
       },
       {
         "category": "Type",
         "subcategory": "Font Family",
         "variable": "$font-family-monospace",
         "type": "font-family",
         "value": "Menlo, Monaco, Consolas, \"Courier New\", monospace"
       },
       {
         "category": "Type",
         "subcategory": "Font Size",
         "variable": "$font-size-base",
         "type": "size",
         "value": "14px"
       },
       {
         "category": "Type",
         "subcategory": "Font Size",
         "variable": "$font-size-large",
         "type": "size",
         "value": "ceil(($font-size-base * 1.25))"
       },
       {
         "category": "Type",
         "subcategory": "Font Size",
         "variable": "$font-size-small",
         "type": "size",
         "value": "ceil(($font-size-base * 0.85))"
       },
       {
         "category": "Type",
         "subcategory": "Line Height",
         "variable": "$line-height-base",
         "type": "line-height",
         "value": "1.428571429"
       },
       {
         "category": "Type",
         "subcategory": "Line Height",
         "variable": "$line-height-computed",
         "type": "line-height",
         "value": "floor(($font-size-base * $line-height-base))"
       },
       {
         "category": "Type",
         "subcategory": "Line Height",
         "variable": "$line-height-large",
         "type": "line-height",
         "value": "1.3333333"
       },
       {
         "category": "Type",
         "subcategory": "Line Height",
         "variable": "$line-height-small",
         "type": "line-height",
         "value": "1.5"
       },
       {
         "category": "Button",
         "subcategory": "Core",
         "variable": "$btn-font-weight",
         "type": "attribute",
         "value": "normal"
       },
       {
         "category": "Button",
         "subcategory": "Core",
         "variable": "$btn-link-disabled-color",
         "type": "color",
         "value": "$gray-light"
       },
       {
         "category": "Button",
         "subcategory": "Border Radius",
         "variable": "$btn-border-radius-base",
         "type": "size",
         "value": "$border-radius-base"
       },
       {
         "category": "Button",
         "subcategory": "Border Radius",
         "variable": "$btn-border-radius-large",
         "type": "size",
         "value": "$border-radius-large"
       },
       {
         "category": "Button",
         "subcategory": "Border Radius",
         "variable": "$btn-border-radius-small",
         "type": "size",
         "value": "$border-radius-small"
       },
       {
         "category": "Button",
         "subcategory": "Default Button",
         "variable": "$btn-default-bg",
         "type": "color",
         "value": "#fff"
       },
       {
         "category": "Button",
         "subcategory": "Default Button",
         "variable": "$btn-default-border",
         "type": "color",
         "value": "#ccc"
       },
       {
         "category": "Button",
         "subcategory": "Default Button",
         "variable": "$btn-default-color",
         "type": "color",
         "value": "#333"
       },
       {
         "category": "Button",
         "subcategory": "Primary Button",
         "variable": "$btn-primary-bg",
         "type": "color",
         "value": "$brand-primary"
       },
       {
         "category": "Button",
         "subcategory": "Primary Button",
         "variable": "$btn-primary-border",
         "type": "color",
         "value": "darken($btn-primary-bg, 5%)"
       },
       {
         "category": "Button",
         "subcategory": "Primary Button",
         "variable": "$btn-primary-color",
         "type": "color",
         "value": "#fff"
       },
       {
         "category": "Button",
         "subcategory": "Info Button",
         "variable": "$btn-info-bg",
         "type": "color",
         "value": "$brand-info"
       },
       {
         "category": "Button",
         "subcategory": "Info Button",
         "variable": "$btn-info-border",
         "type": "color",
         "value": "darken($btn-info-bg, 5%)"
       },
       {
         "category": "Button",
         "subcategory": "Info Button",
         "variable": "$btn-info-color",
         "type": "color",
         "value": "#fff"
       },
       {
         "category": "Button",
         "subcategory": "Success Button",
         "variable": "$btn-success-bg",
         "type": "color",
         "value": "$brand-success"
       },
       {
         "category": "Button",
         "subcategory": "Success Button",
         "variable": "$btn-success-border",
         "type": "color",
         "value": "darken($btn-success-bg, 5%)"
       },
       {
         "category": "Button",
         "subcategory": "Success Button",
         "variable": "$btn-success-color",
         "type": "color",
         "value": "#fff"
       },
       {
         "category": "Button",
         "subcategory": "Warning Button",
         "variable": "$btn-warning-bg",
         "type": "color",
         "value": "$brand-warning"
       },
       {
         "category": "Button",
         "subcategory": "Warning Button",
         "variable": "$btn-warning-border",
         "type": "color",
         "value": "darken($btn-warning-bg, 5%)"
       },
       {
         "category": "Button",
         "subcategory": "Warning Button",
         "variable": "$btn-warning-color",
         "type": "color",
         "value": "#fff"
       },
       {
         "category": "Button",
         "subcategory": "Danger Button",
         "variable": "$btn-danger-bg",
         "type": "color",
         "value": "$brand-danger"
       },
       {
         "category": "Button",
         "subcategory": "Danger Button",
         "variable": "$btn-danger-border",
         "type": "color",
         "value": "darken($btn-danger-bg, 5%)"
       },
       {
         "category": "Button",
         "subcategory": "Danger Button",
         "variable": "$btn-danger-color",
         "type": "color",
         "value": "#ff0000"
       }
      ]
    }
  }'

echo

# TOKEN=04NN9dzu9Wy77knTyOux9cwIPRFstY7IaQ4sXP4ImV8=--mov1dQ3kyjsODRb6IgMv5xjf/4kEv/+/NMmeBJoPqbU= ID=593eb2746d39231fe9ceb386 ./scripts/theme-update.sh
