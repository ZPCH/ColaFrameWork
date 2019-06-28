﻿---
--- UIModelPanel UI类
---

local UIBase = require("Core.ui.UIBase")
local UIModelPanel = Class("UIModelPanel",UIBase)

local _instance = nil

-- 获取UI实例的接口
function UIModelPanel.Instance()
    if nil == _instance then
        _instance = UIModelPanel:new()
    end
    return _instance
end

-- virtual 子类可以初始化一些变量,ResId要在这里赋值
function UIModelPanel:InitParam()
    self.ResId = 104
end

-- override UI面板创建结束后调用，可以在这里获取gameObject和component等操作
function UIModelPanel:OnCreate()

end

-- 界面可见性变化的时候触发
function UIModelPanel:OnShow(isShow)

end

-- 界面销毁的过程中触发
function UIModelPanel:OnDestroy()
	UIBase.OnDestroy(self)
end

-- 注册UI事件监听
function UIModelPanel:RegisterEvent()

end

-- 取消注册UI事件监听
function UIModelPanel:UnRegisterEvent()

end

------------------- UI事件回调 --------------------------
function UIModelPanel:onClick(obj)

end

function UIModelPanel:onBoolValueChange(obj, isSelect)

end

---------------------- UI事件回调 --------------------------

return UIModelPanel