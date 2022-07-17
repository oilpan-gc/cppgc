#!/bin/bash

chromium_trace_common_header="$PWD/src/base/chromium/trace_event_common.h"
mkdir -p $(dirname $chromium_trace_common_header)
curl "https://raw.githubusercontent.com/chromium/chromium/main/base/trace_event/common/trace_event_common.h" -SLo "$chromium_trace_common_header"

