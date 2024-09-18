local FlixManager = {}
--[[

    ███████╗██╗░░░░░██╗██╗░░██╗
    ██╔════╝██║░░░░░██║╚██╗██╔╝
    █████╗░░██║░░░░░██║░╚███╔╝░
    ██╔══╝░░██║░░░░░██║░██╔██╗░
    ██║░░░░░███████╗██║██╔╝╚██╗
    ╚═╝░░░░░╚══════╝╚═╝╚═╝░░╚═╝ 

    Made By : MoSattout#2632
    ♥ شكرا لك على الثقة ♥
    https://discord.gg/5vE6Drh

    في الاسفل سوف تجد بعض التعليمات للتحكم في السكربت الخاص بك

    [ ملاحظة : [ يرجى التمعن في القرائة وفهم كل خيار بشكل جيد
]]

FlixManager.addGroubC = "addGroubC" -- >> كوماند اضافة رتبه اون واوفلاين
FlixManager.removeGroubC = "removeGroubC" -- >> كوماند ازالة رتبه اون واوفلاين
FlixManager.dbMenuName = "القائمة الذكية" -- >> أسم القائمة في الجوال

FlixManager.permissions = {
    menu = "player.byba2ssspec", -- >> بيرمشن القائمة
    changeID = "player.byba2ssspec", -- >> بيرمشن تغيير اي دي
    addOff = "player.byba2ssspec", -- >> بيرمشن اعطاء رتبه ان كان اوفلاين او اونلاين تشتغل
    removeoff = "player.byba2ssspec", -- >> بيرمشن سحب رتبه ان كان اون لاين او اوفلاين تشتغل
    giveitemoff = "player.byba2ssspec", -- >> بيرمشن اعطاء ايتم اون لاين او اوفلاين تشتغل
    cashoff = "player.byba2ssspec", -- >> بيرمشن اعطاء فلوس اونلاين او اوفلاين تشتغل
    delitemoff = "player.byba2ssspec", -- >> بيرمشن حذف ايتم اون لاين او اوفلاين تشتغل
    bankoff = "player.byba2ssspec", -- >> بيرمشن اعطاء فلوس ب البنك اونلاين او اوفلاين تشتغل
    vehoff = "player.byba2ssspec", -- >> بيرمشن اعطاء مركبة اونلاين او اوفلاين تشتغل
    clearInventory = "player.byba2ssspec", -- >> بيرمشن تفريغ حقيبة
    clearWeapons = "player.byba2ssspec", -- >> بيرمشن تفريغ الاسلحة
    clearGrpoups = "player.byba2ssspec", -- >> بيرمشن تصفير رتب
    clearMoney = "player.byba2ssspec", -- >> بيرمشن تصفير فلوس
    clearVehicles = "player.byba2ssspec", -- >> بيرمشن تصفير سيارات
    deleteID = "player.byba2ssspec", -- >> بيرمشن حذف ايدي
    checkMoney = "player.byba2ssspec", -- >> بيرمشن استعلام عن فلوس ايدي
    checkID = "player.byba2ssspec", -- >> بيرمشن استعلام عن وجود ايدي
}

FlixManager.logs = {
    changeID = "", -- >> لوق تغيير اي دي
    addOff = "", -- >> لوق اعطاء رتبه
    removeoff = "", -- >> لوق سحب رتبه
    giveitemoff = "", -- >> لوق اعطاء ايتم
    delitemoff = "", -- >> لوق حذف ايتم
    cashoff = "", -- >> لوق اعطاء فلوس
    bankoff = "", -- >> لوق اعطاء فلوس ب البنك
    vehoff = "", -- >> لوق اعطاء مركبة
    clearInventory = "", -- >> بيرمشن تفريغ حقيبة
    clearWeapons = "", -- >> بيرمشن تفريغ الاسلحة
    clearGrpoups = "", -- >> بيرمشن تصفير رتب
    clearMoney = "", -- >> بيرمشن تصفير فلوس
    clearVehicles = "", -- >> بيرمشن تصفير سيارات
    deleteID = "", -- >> بيرمشن حذف ايدي
}

-- تيبلات الداتا بيز مكان مايتغير الاي دي 
FlixManager.DBTable = { -- اذا ماتعرف فيهم لاتغير شي
    -- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_business SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_data SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_homes SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_identities SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_ids SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_moneys SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
    "UPDATE vrp_user_vehicles SET user_id = @newid WHERE user_id = @currid;",-- اذا ماتعرف فيهم لاتغير شي
}-- اذا ماتعرف فيهم لاتغير شي

return FlixManager