@IsTest
public class TestVerifyDate {
    
    @IsTest static void datewithin30days() {
        Date returndate1 = VerifyDate.CheckDates(date.valueOf('2021-03-09'), date.valueOf('2021-03-15'));
        //This should return Mar 15, 2021 because it is within next 30 days of Mar 09, 2021
        System.assertEquals(date.valueOf('2021-03-15'), returndate1);
    }
    
    @IsTest static void dateNOTwithin30days() {
        Date returndate2 = VerifyDate.CheckDates(date.valueOf('2021-03-09'), date.valueOf('2021-04-15'));
        //This should return Mar 3, 2021 because it is not within next 30 days of Mar 09, 2021
        System.assertEquals(date.valueOf('2021-03-31'), returndate2);
    }
    
}