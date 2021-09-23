public with sharing class SendCanvasEvent {
    public SendCanvasEvent() {}
    public SendCanvasEvent(ApexPages.StandardController ctrl) {}

    @RemoteAction
    public static void publishEvent(String canvasEventBody) {
        EventBus.publish(new CanvasEvent__e(Body__c = canvasEventBody));
    }
}
