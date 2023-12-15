package model;

import java.sql.Date;
import java.util.List;

public class Lottery {
    private String province;
    private Date date;
    private List<LotteryResult> results;

    public Lottery(String province, Date date, List<LotteryResult> results) {
        this.province = province;
        this.date = date;
        this.results = results;
    }
}
