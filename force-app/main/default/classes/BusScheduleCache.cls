public class BusScheduleCache {   
    // Get partition
    private Cache.OrgPartition part;
    String partitionName = 'local.BusSchedule';
    
    public BusScheduleCache(String partitionName) {
		Cache.OrgPartition newpart = Cache.Org.getPartition(partitionName);
        part = newpart;
    }
    
    public static void putSchedule(String busLine, Time[] schedule) {
        Cache.Org.put(busline, schedule);
    }
        
    public static Time[] getSchedule(String busLine) {
        Time[] schedule;
        
        // Get a cached value
		Object obj = Cache.Org.get(busLine);
		// Cast return value to a specific data type
		Time t2 = (Time)obj;
        if (t2 != null) {
        	schedule.add(t2);
        }
        else {
            Time t3 = Time.newInstance(8,0,0,0);
            schedule.add(t3);
            Time t4 = Time.newInstance(17,0,0,0);
            schedule.add(t4);
        }        
        return schedule;
    }  
      
}