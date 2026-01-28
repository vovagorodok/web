#!/bin/bash

SCRIPT_DIR=$( cd $( dirname $0 ) && pwd )
BLE_OTA_REPO_DIR=$SCRIPT_DIR/../ble_ota_app
BLE_OTA_BUILD_DIR=$BLE_OTA_REPO_DIR/build
BLE_OTA_WEB_DIR=$BLE_OTA_BUILD_DIR/web
BLE_OTA_OUT_DIR=$SCRIPT_DIR/apps/ble_ota

cd $BLE_OTA_REPO_DIR
flutter clean
flutter build web --base-href /web/apps/ble_ota/ --release

mkdir -p $BLE_OTA_OUT_DIR
cp -r $BLE_OTA_WEB_DIR/. $BLE_OTA_OUT_DIR