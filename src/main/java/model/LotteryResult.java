package model;

public class LotteryResult {
    private String name_prize;
    private int result;
    public LotteryResult(String name_prize, int result) {
        this.name_prize = name_prize;
        this.result = result;
    }

    public String getName_prize() {
        return name_prize;
    }

    public void setName_prize(String name_prize) {
        this.name_prize = name_prize;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
}
