({
    doInit : function(cmp) {
        var recordId = cmp.get("v.recordId");
        cmp.set("v.params", '{"recordId": "' + recordId + '"}');
    }
})
