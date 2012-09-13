public class takeMetoAccountController {

public Flow.Interview.Create_Account aFlow {get; set;}

    public String getactID() {
        if (aFlow==null) return '';
        else return aFlow.vaAccountID;
    }

    public PageReference getFinishPage(){
        PageReference p = new PageReference('/' + getactID() );
        p.setRedirect(true);
        return p;
    }

}