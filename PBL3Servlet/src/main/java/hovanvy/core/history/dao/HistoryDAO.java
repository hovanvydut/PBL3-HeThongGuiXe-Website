package hovanvy.core.history.dao;

import hovanvy.entity.Customer;
import hovanvy.entity.ParkingHistory;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

/**
 *
 * @author hovanvydut
 */

public interface HistoryDAO {
    
    List<ParkingHistory> getAllHistory(Integer id);
    
    List<ParkingHistory> filterHistory(Customer customer, LocalDateTime fromDate, LocalDateTime toDate);
}
