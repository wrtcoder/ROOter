--[[
LuCI - Lua Configuration Interface - Transmission support

Copyright 2013 Gabor Varga <vargagab@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id$
]]--

module("luci.controller.mjpg-streamer", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/mjpg-streamer") then
		return
	end

	local page = entry({"admin", "services", "mjpg-streamer"}, cbi("mjpg-streamer"), _("MJPG-streamer"))
	page.dependent = true

end