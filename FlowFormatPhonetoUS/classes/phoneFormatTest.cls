@isTest

public class phoneFormatTest {

final static String successString = '(212) 555-1212';

final static String testString1 = '212 555 1212';
final static String testString2 = '212 555-1212';
final static String testString3 = '2125551212';
final static String testString4 = '+12125551212';


@isTest
    public static void runAllTests() {
        Map<String,Object> inputParams = new Map<String,Object>();
        inputParams.put('UnFormattedPhone',testString1);
        formatPhoneFlowPlugin aphone = new formatPhoneFlowPlugin();
        Process.PluginRequest request = new Process.PluginRequest(inputParams);
        Process.PluginResult result;
        result = aphone.invoke(request);
            System.assertEquals(result.outputParameters.get('FormattedPhone'), successString);
        

        inputParams.put('UnFormattedPhone',testString2);
        aphone = new formatPhoneFlowPlugin();
        request = new Process.PluginRequest(inputParams);
        result = aphone.invoke(request);
            System.assertEquals(result.outputParameters.get('FormattedPhone'), successString);
    
    
        inputParams.put('UnFormattedPhone',testString3);
        aphone = new formatPhoneFlowPlugin();
        request = new Process.PluginRequest(inputParams);
        result = aphone.invoke(request);
                System.assertEquals(result.outputParameters.get('FormattedPhone'), successString);

        inputParams.put('UnFormattedPhone',testString4);
        aphone = new formatPhoneFlowPlugin();
        request = new Process.PluginRequest(inputParams);
        result = aphone.invoke(request);
                System.assertEquals(result.outputParameters.get('FormattedPhone'), testString4);

    }
}