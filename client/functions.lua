if not utf8 or utf8.char(956) then
end
if not utf8 or utf8.len then
end
;({})[12], ({})[11], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = "Y", "Z", "E", "P", "T", "G", "M", "k", "", "m", "u", "n"
;({}).Exp = function(_ARG_0_, _ARG_1_)
  return _ARG_0_ * 1024 ^ (-_ARG_1_)
end
;({}).Log = function(_ARG_0_)
  if 0 == _ARG_0_ then
  -- Cleaned and bypassed by flux#3487
    return 0
  end
  return math.floor(math.log(math.abs(_ARG_0_)) / math.log(2) / 10)
end
;({}).Format = function(_ARG_0_, _ARG_1_)
  return _UPVALUE0_.MetricFormat(_UPVALUE0_.Exp(_ARG_0_, _ARG_1_))
end
;({}).Readable = function(_ARG_0_, _ARG_1_, _ARG_2_)
  if not _ARG_2_ then
  end
  return ("%s%s"):format(_UPVALUE0_[_ARG_0_ + 1 + _ARG_1_], "")
end
;({}).MetricFormat = function(_ARG_0_)
  if _ARG_0_ > 1000 then
  elseif _ARG_0_ > 100 then
  else
  end
  return string.format("%.4f", _ARG_0_)
end
;({}).Exp = function(_ARG_0_, _ARG_1_)
  return _ARG_0_ * 1000 ^ (-_ARG_1_)
end
;({}).Log = function(_ARG_0_)
  if 0 == _ARG_0_ then
    return 0
  end
  return math.floor(math.log(math.abs(_ARG_0_)) / math.log(10) / 3)
end
;({}).Format = function(_ARG_0_, _ARG_1_)
  return _UPVALUE0_.MetricFormat(_UPVALUE1_.Exp(_ARG_0_, _ARG_1_))
end
;({}).Readable = function(_ARG_0_, _ARG_1_, _ARG_2_)
  if not _ARG_2_ then
  end
  return ("%s%s"):format(_UPVALUE0_[_ARG_0_ + 1 + _ARG_1_], "")
end
;({}).Label = "Name"
;({}).Cat = "String"
;({}).name, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  if _ARG_0_.name == _ARG_1_.name then
    return 0
  end
  if not (_ARG_0_.name < _ARG_1_.name) or -1 then
  end
  return 1
end
;({}).Label = "Count"
;({}).Cat = "Count"
;({}).count, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  return _ARG_0_.count - _ARG_1_.count
end
;({}).Label = "Self-Time"
;({}).Cat = "Time"
;({}).time, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  return _ARG_0_.time - _ARG_1_.time
end
;({}).Label = "Total-Time"
;({}).Cat = "Time"
;({}).total_time, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  return _ARG_0_.total_time - _ARG_1_.total_time
end
;({}).Label = "Alloc"
;({}).Cat = "Binary"
;({}).allocated, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  return _ARG_0_.allocated - _ARG_1_.allocated
end
;({}).Label = "Total"
;({}).Cat = "Binary"
;({}).total_allocated, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  return _ARG_0_.total_allocated - _ARG_1_.total_allocated
end
;({}).Label = "Dealloc"
;({}).deallocated, ({}).Cat = {}, "Binary"
;({}).Label = "Dealloc"
;({}).total_deallocated, ({}).Cat = {}, "Binary"
;({}).Label = "Lines"
;({}).lines, ({}).Cat = {}, "Table"
;({}).Label = "ID"
;({}).id, ({}).Cat = {}, "String"
;({}).Label = "PID"
;({}).parent, ({}).Cat = {}, "String"
;({}).Label = "Depth"
;({}).Cat = "Count"
;({}).depth, ({}).Sort = {}, function(_ARG_0_, _ARG_1_)
  return _ARG_0_.depth - _ARG_1_.depth
end
;({}).Label = "Time/Call"
;({}).timePerCount, ({}).Cat = {}, "TimeAverage"
;({}).Label = "Total/Call"
;({}).totalTimePerCount, ({}).Cat = {}, "TimeAverage"
;({}).Label = "Alloc/Call"
;({}).allocPerCount, ({}).Cat = {}, "BinaryAverage"
;({}).Label = "Total/Call"
;({}).totalAllocPerCount, ({}).Cat = {}, "BinaryAverage"
;({}).Label = "PctTotal"
;({}).timePercent, ({}).Cat = {}, "Percent"
;({}).Label = "PctTotal"
;({}).allocPercent, ({}).Cat = {}, "Percent"
;({}).Label = "Pct Time Child"
;({}).childTimePercent, ({}).Cat = {}, "Percent"
;({}).Label = "Pct Alloc Child"
;({}).Fields, ({}).childSizePercent, ({}).Cat = {}, {}, "Percent"
;({}).__tostring = function()
  return "Node"
end
;({}).__call = function(_ARG_0_, ...)
  return _UPVALUE0_.New((...))
end
setmetatable({}, {}).__index = setmetatable({}, {})
setmetatable({}, {}).New = function(_ARG_0_, _ARG_1_, _ARG_2_)
  if not _ARG_2_ then
    ({}).id = _ARG_0_
    ;({}).record = _ARG_1_
    if nil ~= _ARG_1_ or "" then
    end
    ;({}).name = _ARG_1_.source
    ;({}).count = 0
    ;({}).child_count = 0
    ;({}).rechable = false
    ;({}).depth = math.huge
    ;({}).parents = {}
    ;({}).children = {}
  end
  if nil == setmetatable({}, _UPVALUE0_).record then
    setmetatable({}, _UPVALUE0_).record = _ARG_1_
  end
  if nil ~= _ARG_1_ and nil ~= _ARG_1_.time then
    setmetatable({}, _UPVALUE0_).time = 0
    setmetatable({}, _UPVALUE0_).total_time = 0
    setmetatable({}, _UPVALUE0_).timePerCount = 0
    setmetatable({}, _UPVALUE0_).totalTimePerCount = 0
    setmetatable({}, _UPVALUE0_).timePercent = 0
    setmetatable({}, _UPVALUE0_).childTimePercent = 0
  end
  if nil ~= _ARG_1_ and nil ~= _ARG_1_.allocated then
    setmetatable({}, _UPVALUE0_).allocated = 0
    setmetatable({}, _UPVALUE0_).deallocated = 0
    setmetatable({}, _UPVALUE0_).total_allocated = 0
    setmetatable({}, _UPVALUE0_).total_deallocated = 0
    setmetatable({}, _UPVALUE0_).allocPerCount = 0
    setmetatable({}, _UPVALUE0_).totalAllocPerCount = 0
    setmetatable({}, _UPVALUE0_).allocPercent = 0
    setmetatable({}, _UPVALUE0_).childSizePercent = 0
  end
  if nil ~= _ARG_1_ and nil ~= _ARG_1_.lines then
    setmetatable({}, _UPVALUE0_).lines = {}
  end
  return (setmetatable({}, _UPVALUE0_))
end
setmetatable({}, {}).Append = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not _ARG_1_.compress_graph or _ARG_2_.func then
  end
  if nil ~= _ARG_3_ then
    _ARG_0_.parents[_ARG_2_.parent] = _ARG_3_
    _ARG_3_.children[_ARG_2_.id] = _ARG_0_
  end
  if not _ARG_0_.name:match("%(%.%.%.tail calls%.%.%.%)") or not _ARG_2_.source:match("%(%.%.%.tail calls%.%.%.%)") then
  end
  if not _UPVALUE0_(_ARG_0_.name, "?") or not _UPVALUE0_(_ARG_2_.source, "?") then
  end
  if not _ARG_2_.source:match("%(%.%.%.tail calls%.%.%.%)") and _UPVALUE1_(_ARG_2_.source) > _UPVALUE1_(_ARG_0_.name) then
    _ARG_0_.name = _ARG_2_.source
  end
  if _ARG_2_.id ~= _ARG_2_.parent then
    for _FORV_20_, _FORV_21_ in pairs(_ARG_0_) do
      if _ARG_2_[_FORV_20_] and _UPVALUE2_.Fields[_FORV_20_] then
        if "Count" == _UPVALUE2_.Fields[_FORV_20_].Cat or "Time" == _UPVALUE2_.Fields[_FORV_20_].Cat or "Binary" ~= _UPVALUE2_.Fields[_FORV_20_].Cat then
        end
        _ARG_0_[_FORV_20_] = _ARG_0_[_FORV_20_] + _ARG_2_[_FORV_20_]
      end
    end
  else
    _ARG_0_.count = _ARG_0_.count + _ARG_2_.count
    if _ARG_0_.time then
      _ARG_0_.time = _ARG_0_.time + _ARG_2_.time
    end
    if _ARG_0_.allocated then
      _ARG_0_.allocated = _ARG_0_.allocated + _ARG_2_.allocated
      _ARG_0_.deallocated = _ARG_0_.deallocated + _ARG_2_.deallocated
    end
  end
  if nil ~= _ARG_2_.lines then
    for _FORV_20_ = 1, #_ARG_2_.lines do
      if nil ~= _ARG_0_.lines[_FORV_20_] then
        _ARG_0_.lines[_FORV_20_] = _ARG_0_.lines[_FORV_20_] + _ARG_2_.lines[_FORV_20_]
      else
        _ARG_0_.lines[_FORV_20_] = _ARG_2_.lines[_FORV_20_]
      end
    end
  end
end
setmetatable({}, {}).DepthFirstReachable = function(_ARG_0_, _ARG_1_)
  if not _ARG_0_.reachable then
    _ARG_0_.depth = _ARG_1_
    _ARG_0_.reachable = true
    for _FORV_15_, _FORV_16_ in pairs(_ARG_0_.children) do
      _FORV_16_.DepthFirstReachable(_FORV_16_, _ARG_1_ + 1)
    end
    _ARG_0_.child_count = 0 + _FORV_16_.child_count + _FORV_16_.count
  else
    _ARG_0_.depth = math.min(_ARG_0_.depth or 0, _ARG_1_)
  end
end
;({}).flush = function()
end
;({}).StdOut, ({}).write_line = {}, function(_ARG_0_, _ARG_1_)
  Citizen.Trace(_ARG_1_)
  Citizen.Trace("\n")
end
;({}).count, ({})[3], ({})[2], ({})[1] = {}, "name", "depth", "count"
;({}).time, ({})[4], ({})[3], ({})[2], ({})[1] = {}, "name", "depth", "count", "time"
;({}).total_time, ({})[4], ({})[3], ({})[2], ({})[1] = {}, "name", "depth", "count", "total_time"
;({}).allocated, ({})[4], ({})[3], ({})[2], ({})[1] = {}, "name", "depth", "count", "allocated"
;({}).Sorting, ({}).total_allocated, ({})[4], ({})[3], ({})[2], ({})[1] = {}, {}, "name", "depth", "count", "total_allocated"
;({}).__tostring = function()
  return "Profile Graph"
end
;({}).__call = function(_ARG_0_, ...)
  return _UPVALUE0_.New((...))
end
setmetatable({}, {}).__index = setmetatable({}, {})
setmetatable({}, {}).New = function(_ARG_0_, _ARG_1_)
  ({}).root = nil
  ;({}).functions = {}
  ;({}).count = 0
  ;({}).size = 0
  ;({}).time = 0
  ;({}).max_count = 0
  ;({}).max_size = 0
  ;({}).global, ({}).max_time = {}, 0
  for _FORV_20_ = 1, #_ARG_1_ do
    if not _ARG_0_.compress_graph or _ARG_1_[_FORV_20_].func then
    end
    if not setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].id] or nil ~= setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].id].record then
    end
    setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].id] = _UPVALUE1_.New(_ARG_1_[_FORV_20_].id, _ARG_1_[_FORV_20_], setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].id])
    if "0" == _ARG_1_[_FORV_20_].func then
      setmetatable({}, _UPVALUE0_).root = _UPVALUE1_.New(_ARG_1_[_FORV_20_].id, _ARG_1_[_FORV_20_], setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].id])
    end
    if "0" ~= _ARG_1_[_FORV_20_].func and not setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].parent] then
      setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].parent] = _UPVALUE1_.New(_ARG_1_[_FORV_20_].parent, nil, nil)
      if "0" == _ARG_1_[_FORV_20_].parent then
        setmetatable({}, _UPVALUE0_).root = _UPVALUE1_.New(_ARG_1_[_FORV_20_].parent, nil, nil)
      end
    end
    _UPVALUE1_.New(_ARG_1_[_FORV_20_].id, _ARG_1_[_FORV_20_], setmetatable({}, _UPVALUE0_).functions[_ARG_1_[_FORV_20_].id]):Append(_ARG_0_, _ARG_1_[_FORV_20_], (_UPVALUE1_.New(_ARG_1_[_FORV_20_].parent, nil, nil)))
    setmetatable({}, _UPVALUE0_).global.count = setmetatable({}, _UPVALUE0_).global.count + _ARG_1_[_FORV_20_].count
    if not _ARG_0_.instrument or _ARG_1_[_FORV_20_].time then
    end
    setmetatable({}, _UPVALUE0_).global.time = setmetatable({}, _UPVALUE0_).global.time + 0
    if not _ARG_0_.memory or _ARG_1_[_FORV_20_].allocated then
    end
    setmetatable({}, _UPVALUE0_).global.size = setmetatable({}, _UPVALUE0_).global.size + 0
  end
  if 0 == #_ARG_1_ then
    error("Script requires load_stack or reduced instructions count")
  elseif nil == setmetatable({}, _UPVALUE0_).root then
    error("Root node/record does not exist!")
  end
  setmetatable({}, _UPVALUE0_).root:DepthFirstReachable(0)
  for _FORV_20_, _FORV_21_ in pairs(setmetatable({}, _UPVALUE0_).functions) do
    if not _FORV_21_.reachable then
      error(("%s is not reachable!"):format(_FORV_21_.name))
    end
    for _FORV_25_, _FORV_26_ in pairs(_FORV_21_.parents) do
      _FORV_26_.children[_FORV_20_] = _FORV_21_
      if not _ARG_0_.compress_graph and not _FORV_21_.parent then
        _FORV_21_.parent = _FORV_26_.id
      end
    end
  end
  for _FORV_20_, _FORV_21_ in pairs(setmetatable({}, _UPVALUE0_).functions) do
    setmetatable({}, _UPVALUE0_).global.max_count = math.max(setmetatable({}, _UPVALUE0_).global.max_count, _FORV_21_.count)
    if _ARG_0_.instrument and nil ~= _FORV_21_.record and nil ~= _FORV_21_.time then
      setmetatable({}, _UPVALUE0_).global.max_time = math.max(setmetatable({}, _UPVALUE0_).global.max_time, _FORV_21_.time)
      _FORV_21_.timePercent = 0
      _FORV_21_.childTimePercent = 0
      _FORV_21_.timePerCount = 0
      _FORV_21_.totalTimePerCount = 0
      if 0 ~= _FORV_21_.count then
        _FORV_21_.timePerCount = _FORV_21_.time / _FORV_21_.count
        _FORV_21_.totalTimePerCount = _FORV_21_.total_time / _FORV_21_.count
      end
      if 0 ~= setmetatable({}, _UPVALUE0_).global.time then
        _FORV_21_.timePercent = 100 * (_FORV_21_.time / setmetatable({}, _UPVALUE0_).global.time)
        _FORV_21_.childTimePercent = 100 * ((_FORV_21_.total_time - _FORV_21_.time) / setmetatable({}, _UPVALUE0_).global.time)
      end
    end
    if _ARG_0_.memory and nil ~= _FORV_21_ and nil ~= _FORV_21_.record and nil ~= _FORV_21_.allocated then
      setmetatable({}, _UPVALUE0_).global.max_size = math.max(setmetatable({}, _UPVALUE0_).global.max_size, _FORV_21_.allocated or 0)
      _FORV_21_.allocPercent = 0
      _FORV_21_.childSizePercent = 0
      _FORV_21_.allocPerCount = 0
      _FORV_21_.totalAllocPerCount = 0
      if 0 ~= _FORV_21_.count then
        _FORV_21_.allocPerCount = _FORV_21_.allocated / _FORV_21_.count
        _FORV_21_.totalAllocPerCount = _FORV_21_.total_allocated / _FORV_21_.count
      end
      if 0 ~= setmetatable({}, _UPVALUE0_).global.size then
        _FORV_21_.allocPercent = 100 * (_FORV_21_.allocated / setmetatable({}, _UPVALUE0_).global.size)
        _FORV_21_.childSizePercent = 100 * ((_FORV_21_.total_allocated - _FORV_21_.allocated) / setmetatable({}, _UPVALUE0_).global.size)
      end
    end
  end
  return (setmetatable({}, _UPVALUE0_))
end
setmetatable({}, {}).CreateTimeUnits = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if "micro" == _ARG_1_.clockid or "Krdtsc" ~= _ARG_1_.clockid then
  end
  if "rdtsc" == _ARG_1_.clockid or "Krdtsc" ~= _ARG_1_.clockid then
  end
  return _UPVALUE0_.Log(_ARG_2_), _UPVALUE0_.Readable(_UPVALUE0_.Log(_ARG_2_), 1, "s"), _UPVALUE0_.Log(_ARG_2_) - _UPVALUE0_.Log(_ARG_3_), (_UPVALUE0_.Readable(_UPVALUE0_.Log(_ARG_2_) - _UPVALUE0_.Log(_ARG_3_), 1, "s"))
end
setmetatable({}, {}).CreateByteUnits = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _UPVALUE0_.Log(_ARG_2_), _UPVALUE0_.Readable(_UPVALUE0_.Log(_ARG_2_), 3, "B"), _UPVALUE0_.Log(_ARG_2_) - _UPVALUE0_.Log(_ARG_3_), (_UPVALUE1_.Readable(_UPVALUE0_.Log(_ARG_2_) - _UPVALUE0_.Log(_ARG_3_), 3, "B"))
end
setmetatable({}, {}).Verbose = function(_ARG_0_, _ARG_1_, _ARG_2_)
  if not _ARG_2_ then
  end
  ;({})[#{} + 1], ({})[2], ({})[1] = {}, "", "Header"
  ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.clockid)
  ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, ("%s %s"):format(_UPVALUE1_.Format(_ARG_1_.profile_overhead, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_1_.profile_overhead, 1)), _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_1_.profile_overhead, 1))
  ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, ("%s %s"):format(_UPVALUE1_.Format(_ARG_1_.calibration, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_1_.profile_overhead, 1)), _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_1_.profile_overhead, 1))
  ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.instr_count)
  ;({})[#{} + 1], ({})[2], ({})[1] = {}, "", ""
  if _ARG_1_.callback then
    ({})[#{} + 1], ({})[2], ({})[1] = {}, "", "Trace Events"
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.compress)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.threshold)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.pagesize)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.pagelimit)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.totalpages)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.usedpages)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.pagesize)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.eventpages)
    if not (_ARG_1_.pagelimit > 0) or ("%2.3f"):format(_ARG_1_.pageusage) then
    end
    ;({})[#{} + 1], ({})[2], ({})[1] = {}, "Inf", "Buffer Usage"
  end
  if _ARG_1_.debug then
    ({})[#{} + 1], ({})[2], ({})[1] = {}, "", "Hashing"
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.debug.buckets)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.debug.used_buckets)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.debug.record_count)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.debug.min)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, tostring(_ARG_1_.debug.max)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, string.format("%2.3f", _ARG_1_.debug.mean)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, string.format("%2.3f", _ARG_1_.debug.var)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, string.format("%2.3f", _ARG_1_.debug.mean_hits)
    ;({})[#{} + 1], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = {}, string.format("%2.3f", _ARG_1_.debug.var_hits)
    ;({})[#{} + 1], ({})[2], ({})[1] = {}, "", ""
  end
  for _FORV_24_ = 1, #{} do
  end
  for _FORV_24_ = 1, #{} do
    _UPVALUE0_.StdOut:write_line(("%s %s"):format(_UPVALUE3_(({})[_FORV_24_][1], math.max(_UPVALUE2_(({})[_FORV_24_][1]), 0) + 1), ({})[_FORV_24_][2] or ""))
  end
end
setmetatable({}, {}).Flat = function(_ARG_0_, _ARG_1_, _ARG_2_)
  ({})[13], ({})[12], ({})[11], ({})[10], ({})[9], ({})[8], ({})[7], ({})[6], ({})[5], ({})[4], ({})[3], ({})[2], ({})[1] = "lines", "name", "totalAllocPerCount", "allocPerCount", "total_allocated", "allocated", "allocPercent", "totalTimePerCount", "timePerCount", "total_time", "time", "timePercent", "count"
  if not _ARG_1_.compress_graph then
    table.insert({}, #{}, "depth")
    table.insert({}, #{}, "id")
    table.insert({}, #{}, "parent")
  end
  if not _ARG_1_.csv or ", " then
  end
  for _FORV_38_, _FORV_39_ in pairs(_ARG_0_.functions) do
    if nil ~= _FORV_39_.record then
      ({})[#{} + 1] = _FORV_38_
      for _FORV_43_ = #{}, 1, -1 do
        if "Table" ~= _UPVALUE0_.Fields[({})[_FORV_43_]].Cat then
          if nil == _FORV_39_[({})[_FORV_43_]] then
            table.remove({}, _FORV_43_)
          end
        elseif "Table" == _UPVALUE0_.Fields[({})[_FORV_43_]].Cat and not _ARG_1_.show_lines then
          table.remove({}, _FORV_43_)
        end
      end
    end
  end
  table.sort({}, _UPVALUE1_(_ARG_0_, _UPVALUE2_.Sorting[_ARG_1_.sort or "count"]))
  for _FORV_38_ = 1, #{} do
    for _FORV_42_ = 1, #{} do
      if "Time" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
        ({})[_FORV_42_] = _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]], _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      elseif "Binary" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
        ({})[_FORV_42_] = _UPVALUE4_.Format(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]], _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      elseif "TimeAverage" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
        ({})[_FORV_42_] = _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]], _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      elseif "BinaryAverage" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
        ({})[_FORV_42_] = _UPVALUE4_.Format(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]], _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      elseif "Percent" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
        ({})[_FORV_42_] = ("%1.3f"):format(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]])
      elseif "Table" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
        if not _ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]] then
        end
        if not _ARG_1_.csv or ("\"%s\""):format((table.concat({}, ", "))) then
        end
        ;({})[_FORV_42_] = table.concat({}, ", ")
      elseif _ARG_1_.csv then
        if "String" == _UPVALUE0_.Fields[({})[_FORV_42_]].Cat then
          ({})[_FORV_42_] = ("\"%s\""):format(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]])
        end
      else
        ({})[_FORV_42_] = tostring(_ARG_0_.functions[({})[_FORV_38_]][({})[_FORV_42_]])
      end
    end
    ;({})[#{} + 1] = {}
    for _FORV_42_ = 1, #{} do
      ({})[_FORV_42_] = math.max(({})[_FORV_42_] or 1, _UPVALUE5_(({})[_FORV_42_]) + 1)
    end
  end
  for _FORV_38_ = 1, #{} do
    if "Count" == _UPVALUE0_.Fields[({})[_FORV_38_]].Cat then
    elseif "Time" == _UPVALUE0_.Fields[({})[_FORV_38_]].Cat then
    elseif "Binary" == _UPVALUE0_.Fields[({})[_FORV_38_]].Cat then
    elseif "TimeAverage" == _UPVALUE0_.Fields[({})[_FORV_38_]].Cat then
    elseif "BinaryAverage" == _UPVALUE0_.Fields[({})[_FORV_38_]].Cat then
    else
    end
    ;({})[_FORV_38_] = math.max(({})[_FORV_38_] or 1, _UPVALUE5_(_UPVALUE0_.Fields[({})[_FORV_38_]].Label), _UPVALUE5_("%") + 1)
    if _ARG_1_.csv then
      ({})[_FORV_38_] = ("\"%s\""):format("%")
      _FOR_[_FORV_38_] = ("\"%s\""):format(_UPVALUE0_.Fields[({})[_FORV_38_]].Label)
    else
      ({})[_FORV_38_] = _UPVALUE6_("%", ({})[_FORV_38_])
      _FOR_[_FORV_38_] = _UPVALUE6_(_UPVALUE0_.Fields[({})[_FORV_38_]].Label, ({})[_FORV_38_])
    end
  end
  _ARG_2_ = _ARG_2_ or _UPVALUE2_.StdOut
  _ARG_2_.write_line(_ARG_2_, table.concat(_FOR_, " "))
  _ARG_2_.write_line(_ARG_2_, table.concat({}, " "))
  for _FORV_38_ = 1, #{} do
    for _FORV_42_ = 1, #{} do
      if _FORV_42_ ~= #{} and not _ARG_1_.csv then
        ({})[_FORV_38_][_FORV_42_] = _UPVALUE6_(({})[_FORV_38_][_FORV_42_], ({})[_FORV_42_])
      end
    end
    _ARG_2_.write_line(_ARG_2_, table.concat(({})[_FORV_38_], " "))
  end
end
setmetatable({}, {}).Pepperfish = function(_ARG_0_, _ARG_1_, _ARG_2_)
  _ARG_2_ = _ARG_2_ or _UPVALUE0_.StdOut
  for _FORV_46_, _FORV_47_ in pairs(_ARG_0_.functions) do
    if nil ~= _FORV_47_.record then
      ({})[#{} + 1] = _FORV_46_
    end
  end
  table.sort({}, (_UPVALUE1_(_ARG_0_, _UPVALUE0_.Sorting[_ARG_1_.sort or "count"])))
  ;({})[#{} + 1], ({})[1] = {}, "Sample count:"
  ;({}).count = #{}
  ;({})[#{} + 1] = "Child "
  ;({})[#{} + 1] = ""
  ;({})[#{} + 1] = "sampled "
  ;({})[#{} + 1] = ""
  ;({})[#{} + 1] = " times. "
  if _ARG_1_.memory then
    ({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "", "", ""
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "suffix", "", "Memory persists:"
    ;({}).persists = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "suffix", "", "Memory allocated:"
    ;({}).malloc = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "suffix", "", "Memory deallocated:"
    ;({}).mfree = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "suffix", "", "Memory allocated in children:"
    ;({}).chmalloc = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "suffix", "", "Memory allocated total:"
    ;({}).chmalloctotal = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "%", "", "Total percent allocated in function:"
    ;({}).fpctalloc = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "%", "", "Total percent allocated in children:"
    ;({}).cpctalloc = #{}
  end
  if _ARG_1_.instrument then
    ({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "", "", ""
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "", "", "Time spent:"
    ;({}).time = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "", "", "Time spent in function:"
    ;({}).ftime = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "", "", "Time spent in children:"
    ;({}).ctime = #{}
    ;({})[#{} + 1], ({})[4], ({})[3], ({})[2], ({})[1] = {}, "/sample", "", "", "Time spent per sample:"
    ;({}).timesample = #{}
    ;({})[#{} + 1], ({})[4], ({})[3], ({})[2], ({})[1] = {}, "/sample", "", "", "Time spent in function per sample:"
    ;({}).ftimesample = #{}
    ;({})[#{} + 1], ({})[4], ({})[3], ({})[2], ({})[1] = {}, "/sample", "", "", "Time spent in children per sample:"
    ;({}).ctimesample = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "%", "", "Percent time spent in function:"
    ;({}).pftime = #{}
    ;({})[#{} + 1], ({})[3], ({})[2], ({})[1] = {}, "%", "", "Percent time spent in children:"
    ;({}).pctime = #{}
    ;({})[#{} + 1] = "Took "
    ;({})[#{} + 1] = ""
    ;({})[#{} + 1] = " "
    ;({})[#{} + 1] = ""
    ;({})[#{} + 1] = ". Averaging "
    ;({})[#{} + 1] = ""
    ;({})[#{} + 1] = " "
    ;({})[#{} + 1] = ""
    ;({})[#{} + 1] = "/exec"
  end
  for _FORV_46_ = 1, #{} do
    _ARG_0_.functions[({})[_FORV_46_]].children[_ARG_0_.functions[({})[_FORV_46_]].id] = nil
    for _FORV_50_, _FORV_51_ in pairs(_ARG_0_.functions[({})[_FORV_46_]].children) do
      ({})[#{} + 1] = _FORV_50_
    end
    table.sort({}, (_UPVALUE1_(_ARG_0_, _UPVALUE0_.Sorting[_ARG_1_.sort or "count"])))
    ;(function(_ARG_0_, _ARG_1_)
      _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
    end)("count", string.format("%4d", _ARG_0_.functions[({})[_FORV_46_]].count))
    if _ARG_1_.memory then
      (function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("persists", _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("malloc", _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("mfree", _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("chmalloc", _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("chmalloctotal", _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
      end)("persists", _UPVALUE2_.Format(_ARG_0_.functions[({})[_FORV_46_]].allocated - _ARG_0_.functions[({})[_FORV_46_]].deallocated, _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count)))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
      end)("malloc", _UPVALUE2_.Format(_ARG_0_.functions[({})[_FORV_46_]].allocated, _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count)))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
      end)("mfree", _UPVALUE2_.Format(_ARG_0_.functions[({})[_FORV_46_]].deallocated, _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count)))
      if #{} > 0 then
        (function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("chmalloc", _UPVALUE2_.Format(_ARG_0_.functions[({})[_FORV_46_]].total_allocated - _ARG_0_.functions[({})[_FORV_46_]].allocated, _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count)))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("chmalloctotal", _UPVALUE2_.Format(_ARG_0_.functions[({})[_FORV_46_]].total_allocated, _ARG_0_.CreateByteUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_size, _ARG_0_.global.max_count)))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("fpctalloc", string.format("%1.3f", _ARG_0_.functions[({})[_FORV_46_]].allocPercent))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("cpctalloc", string.format("%1.3f", _ARG_0_.functions[({})[_FORV_46_]].childSizePercent))
      else
        (function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("chmalloc", "")
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("chmalloctotal", "")
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("fpctalloc", string.format("%1.3f", _ARG_0_.functions[({})[_FORV_46_]].allocPercent))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("cpctalloc", "")
      end
    end
    if _ARG_1_.instrument then
      (function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("time", _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("ftime", _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("ctime", _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("timesample", _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("ftimesample", _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][3] = _ARG_1_
      end)("ctimesample", _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))
      if #{} > 0 then
        if 0 ~= _ARG_0_.functions[({})[_FORV_46_]].count then
        end
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("time", string.format("%4.3f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].total_time, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ftime", string.format("%4.3f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].time, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ctime", string.format("%4.3f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].total_time - _ARG_0_.functions[({})[_FORV_46_]].time, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("timesample", string.format("%4.5f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].totalTimePerCount, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ftimesample", string.format("%4.5f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].timePerCount, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ctimesample", string.format("%4.5f", _UPVALUE3_.Format((_ARG_0_.functions[({})[_FORV_46_]].total_time - _ARG_0_.functions[({})[_FORV_46_]].time) / _ARG_0_.functions[({})[_FORV_46_]].count, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
      else
        (function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("time", "")
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ftime", string.format("%4.3f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].time, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ctime", "")
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("timesample", string.format("%4.3f", _UPVALUE3_.Format(_ARG_0_.functions[({})[_FORV_46_]].totalTimePerCount, _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count))))
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ftimesample", "")
        ;(function(_ARG_0_, _ARG_1_)
          _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
        end)("ctimesample", "")
      end
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
      end)("pftime", string.format("%1.3f", _ARG_0_.functions[({})[_FORV_46_]].timePercent))
      ;(function(_ARG_0_, _ARG_1_)
        _UPVALUE1_[_UPVALUE0_[_ARG_0_]][2] = _ARG_1_
      end)("pctime", string.format("%1.3f", _ARG_0_.functions[({})[_FORV_46_]].childTimePercent))
    end
    for _FORV_50_ = 1, #{} do
    end
    if (" %s "):format(_ARG_0_.functions[({})[_FORV_46_]].name):len() < 42 then
    end
    _ARG_2_.write_line(_ARG_2_, ("%s%s%s"):format(string.rep("-", 19), ("%s%s%s"):format(string.rep("-", (math.ceil((42 - (" %s "):format(_ARG_0_.functions[({})[_FORV_46_]].name):len()) / 2))), (" %s "):format(_ARG_0_.functions[({})[_FORV_46_]].name), string.rep("-", 42 - (" %s "):format(_ARG_0_.functions[({})[_FORV_46_]].name):len())), string.rep("-", 19)))
    for _FORV_50_ = 1, #{} do
      if "" ~= ({})[_FORV_50_][2] then
        _ARG_2_.write_line(_ARG_2_, string.format("%s %s %s", _UPVALUE5_(({})[_FORV_50_][1], math.max(_UPVALUE4_(({})[_FORV_50_][1]), 0) + 1), _UPVALUE5_(({})[_FORV_50_][2], -(math.max(_UPVALUE4_(({})[_FORV_50_][2]), 0) + 1)), ({})[_FORV_50_][3] or ""))
      elseif "" == ({})[_FORV_50_][1] then
        _ARG_2_.write_line(_ARG_2_, "")
      end
    end
    for _FORV_50_ = 1, #{} do
    end
    for _FORV_50_ = 1, #{} do
      if 0 == 0 then
        _ARG_2_.write_line(_ARG_2_, "")
      end
      ;({})[2] = _UPVALUE5_(_ARG_0_.functions[({})[_FORV_46_]].children[({})[_FORV_50_]].name, math.max(0, _UPVALUE4_(_ARG_0_.functions[({})[_FORV_46_]].children[({})[_FORV_50_]].name)) + 1)
      ;({})[4] = string.format("%6d", _ARG_0_.functions[({})[_FORV_46_]].children[({})[_FORV_50_]].count)
      if _ARG_1_.instrument then
        ({})[9], ({})[7] = _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count)
        ;({})[9], ({})[7] = _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count)
        ;({})[13], ({})[11] = _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count)
        ;({})[13], ({})[11] = _ARG_0_.CreateTimeUnits(_ARG_0_, _ARG_1_, _ARG_0_.global.max_time, _ARG_0_.global.max_count)
      end
      _ARG_2_.write_line(_ARG_2_, table.concat({}))
    end
    _ARG_2_.write_line(_ARG_2_, "")
    _ARG_2_.flush(_ARG_2_)
  end
  _ARG_2_.write_line(_ARG_2_, [[

END]])
  _ARG_2_.flush(_ARG_2_)
end
setmetatable({}, {}).Callgrind = function(_ARG_0_, _ARG_1_, _ARG_2_)
  _ARG_2_ = _ARG_2_ or _UPVALUE0_.StdOut
  if not _ARG_1_.instrument and not _ARG_1_.sample then
    error("Callgrind format requires instrumentation")
  end
  for _FORV_23_, _FORV_24_ in pairs(_ARG_0_.functions) do
    if nil ~= _FORV_24_.record then
      ({})[#{} + 1] = _FORV_23_
    end
  end
  table.sort({}, _UPVALUE1_(_ARG_0_, _UPVALUE0_.Sorting[_ARG_1_.sort or "count"]))
  if not _ARG_1_.instrument or "Time" then
  end
  _ARG_2_.write_line(_ARG_2_, ("events: %s"):format("Samples"))
  _ARG_2_.write_line(_ARG_2_, "")
  _ARG_2_.write_line(_ARG_2_, "# define function ID mapping")
  for _FORV_23_ = 1, #{} do
    if "0" ~= _ARG_0_.functions[({})[_FORV_23_]].record.func or "main" then
    end
    if nil ~= _ARG_0_.functions[({})[_FORV_23_]].name:match("(%b())") then
      _ARG_0_.functions[({})[_FORV_23_]].callgrind_source = _ARG_0_.functions[({})[_FORV_23_]].name:match("(%b())"):sub(2, _ARG_0_.functions[({})[_FORV_23_]].name:match("(%b())"):len() - 1)
    end
    _ARG_0_.functions[({})[_FORV_23_]].callgrind_id = _FORV_23_
    _ARG_2_.write_line(_ARG_2_, ("fn=(%d) %s"):format(_ARG_0_.functions[({})[_FORV_23_]].callgrind_id, (("%s:%s"):format(_ARG_0_.functions[({})[_FORV_23_]].name, _ARG_0_.functions[({})[_FORV_23_]].id))))
    _ARG_2_.write_line(_ARG_2_, ("fl=(%d) %s"):format(_ARG_0_.functions[({})[_FORV_23_]].callgrind_id, _ARG_0_.functions[({})[_FORV_23_]].callgrind_source or "[C]"))
  end
  _ARG_2_.write_line(_ARG_2_, "")
  _ARG_2_.write_line(_ARG_2_, "# define callgraph")
  ;(function(_ARG_0_)
    if _ARG_0_.callgrind_reached then
      return
    end
    _ARG_0_.callgrind_reached = true
    if not (_ARG_0_.record.linedefined < 0) or 0 then
    end
    _UPVALUE0_:write_line(("fn=(%d)"):format(_ARG_0_.callgrind_id))
    if _UPVALUE1_ then
      _UPVALUE0_:write_line(("%d %d"):format(_ARG_0_.record.linedefined, _ARG_0_.time))
    else
      _UPVALUE0_:write_line(("%d %d"):format(_ARG_0_.record.linedefined, _ARG_0_.count))
    end
    if _UPVALUE2_.compress_graph then
      _ARG_0_.children[_ARG_0_.id] = nil
    end
    for _FORV_18_, _FORV_19_ in pairs(_ARG_0_.children) do
      if not (0 >= _FORV_19_.count) or 1 then
      end
      _UPVALUE0_:write_line(("cfn=(%d)"):format(_FORV_19_.callgrind_id))
      _UPVALUE0_:write_line(("calls=%d %d"):format(_FORV_19_.count, 0))
      if _UPVALUE1_ then
        _UPVALUE0_:write_line(("%d %d"):format(_FORV_19_.record.parent_line, _FORV_19_.total_time))
      else
        _UPVALUE0_:write_line(("%d %d"):format(_FORV_19_.record.parent_line, _FORV_19_.child_count))
      end
    end
    _UPVALUE0_:write_line("")
    for _FORV_18_, _FORV_19_ in pairs(_ARG_0_.children) do
      _UPVALUE3_(_FORV_19_)
    end
  end)(_ARG_0_.root)
end
Citizen.Graph = setmetatable({}, {})
