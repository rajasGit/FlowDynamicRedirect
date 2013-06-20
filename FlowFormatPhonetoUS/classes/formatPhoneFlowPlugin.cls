global class formatPhoneFlowPlugin implements Process.Plugin
{

        
    global Process.PluginResult invoke(Process.PluginRequest request)
    {
        String unformattedPhone = (String)request.inputParameters.get('UnFormattedPhone');
 

        String formattedPhone = formatPhone(unformattedPhone);
        
        Map<String, Object> result = new Map<String, Object>();
        result.put('FormattedPhone', formattedPhone);

        return new Process.PluginResult(result); 
    }

    global Process.PluginDescribeResult describe()
    {
        Process.PluginDescribeResult result = new Process.PluginDescribeResult(); 
        result.description='This plug-in formats a phone from a 10 digit number to (area code) XXX-XXXX';
        result.inputParameters = new List<Process.PluginDescribeResult.InputParameter> {
            new Process.PluginDescribeResult.InputParameter('UnFormattedPhone', Process.PluginDescribeResult.ParameterType.STRING, true)
        };

        result.outputParameters = new List<Process.PluginDescribeResult.OutputParameter> {
            new Process.PluginDescribeResult.OutputParameter('FormattedPhone', Process.PluginDescribeResult.ParameterType.STRING)
        };

        return result;
    }
    
        private static String formatphone(String cphone) {
            String fphone = preformat(cphone);
            
            if (fphone.length() == 10) {
                fphone = formatphonenum(fphone);
                return fphone;
            }
            else {
                return cphone;
            }
        }
        static String preformat(String s) {
            s=s.replaceAll('\\\\D','');
            s = s.replaceAll(' ','');
            s = s.replaceAll('-','');
            return s;
        }
        
        static String formatphonenum (String s) {
            s = '(' + s.substring(0, 3) + ') ' + s.substring(3, 6) + '-' + s.substring(6);
            return s;
        }
        
    
    
  
    }