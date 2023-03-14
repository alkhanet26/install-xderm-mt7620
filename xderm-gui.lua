module("luci.controller.xderm-gui", package.seeall)

function index()
        entry( {"admin","services"},firstchild(),"services",26 ).dependent=false
        entry( {"admin","services","xderm-gui"},firstchild(),_("Xderm-GUI")).dependent=false
	entry( {"admin","services","xderm-gui"}, template("xderm-gui"), _("Xderm-GUI") )
end