package bitMember.domain;

public class BitMember {
    private String memberId;
    private String password;
    private String memberName;
    private String regTime;

    public BitMember(String memberId, String password, String memberName) {
        this.memberId = memberId;
        this.password = password;
        this.memberName = memberName;
    }

    public BitMember(String memberId, String password, String memberName, String regTime) {
        this.memberId = memberId;
        this.password = password;
        this.memberName = memberName;
        this.regTime = regTime;
    }

    public BitMember(){}

    public String getRegTime() {
        return regTime;
    }

    public void setRegTime(String regTime) {
        this.regTime = regTime;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    @Override
    public String toString() {
        return "BitMember{" +
                "memberId='" + memberId + '\'' +
                ", password='" + password + '\'' +
                ", memberName='" + memberName + '\'' +
                '}';
    }
}
