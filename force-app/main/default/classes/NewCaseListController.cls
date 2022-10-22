public class NewCaseListController {
    Public List<Case> getNewCases () {
        List<Case> results = Database.query(
        'Select Id, CaseNumber From Case Where Status = \'New\'');
        Return results;
    }
}