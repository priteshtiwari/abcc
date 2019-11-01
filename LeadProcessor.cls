global class LeadProcessor implements Database.Batchable<sObject>{
   global Integer count =0;
    
    global Database.queryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('Select Id ,LeadSource from Lead');
    }
    
    global void execute(Database.BatchableContext bc , List<Lead> l_lead)
    { 
       List<Lead> lisLead = new List<Lead>();
        for(Lead l : l_lead)
        {
            l.LeadSource ='Dreamforce';
            lislead.add(l);
            count += 1;
        }
        update lisLead ;
    }
     
    global void finish(Database.batchableContext bc)
    {
        System.debug('Count = ' + count );
    }
}