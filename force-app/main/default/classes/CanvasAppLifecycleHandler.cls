public with sharing class CanvasAppLifecycleHandler implements Canvas.CanvasLifecycleHandler {

    public Set<Canvas.ContextTypeEnum> excludeContextTypes(){
        Set<Canvas.ContextTypeEnum> excluded = new Set<Canvas.ContextTypeEnum>();

        // Code goes here to add items to excluded list
        // that should be excluded from Context data

        return excluded;
    }

    public void onRender(Canvas.RenderContext renderContext) {
        // Get the Application and Environment context from the RenderContext
        Canvas.ApplicationContext app = renderContext.getApplicationContext();
        Canvas.EnvironmentContext env = renderContext.getEnvironmentContext();

        System.debug(env.getEntityFields());
        System.debug(env.getLocationUrl());
        System.debug(env.getDisplayLocation());
        System.debug(env.getSublocation());
        System.debug(env.getParametersAsJSON());
        // Check the application version
        // Double currentVersion = Double.valueOf(app.getVersion());
        // if (currentVersion <= 5){
            // Versions lower than 5 are no longer supported in this example
            // throw new Canvas.CanvasRenderException('Error: Versions earlier than 5 are no longer supported.');
        // }

        // Override app URL, replacing portion after domain with '/alternatePath'
        // app.setCanvasUrlPath('/alternatePath');

        // Code goes here to customize behavior when the app is rendered
        // Add Name, BillingAddress and YearStarted to fields 
        // (assumes we'll run from a component on the Account detail page)
        Set<String> fields = new Set<String>('Id,FirstName,LastName,Email,Phone'.split(','));
        env.addEntityFields(fields);

        // Add a new custom param to the set of custom params
        // First, get the current custom params
        Map<String, Object> previousParams = 
            (Map<String, Object>) JSON.deserializeUntyped(env.getParametersAsJSON());
        
        if(!previousParams.containsKey('customContext')) {
            // Add a 'newCustomParam' to our Map
            previousParams.put('customContext','record');
        }
        // Now, replace the parameters
        env.setParametersAsJSON(JSON.serialize(previousParams));
    }
}