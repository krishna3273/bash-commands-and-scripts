#!/bin/bash
grep -E "^[T][S].{6}(55-|SS-|55 |SS )[0O]$" $1|grep -E "(^.{2}-.{2}-.{4}-.)|(^.{2} .{2} .{4} .)"