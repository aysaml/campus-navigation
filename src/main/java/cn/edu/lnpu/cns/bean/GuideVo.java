package cn.edu.lnpu.cns.bean;

/**
 * 导游vo对象
 *
 * @author wangning113
 * @since 2018/4/11
 */
public class GuideVo {
    private Long id;

    private Long placeId;

    private String placeNameCh;

    private Long userId;

    private String name;

    private String userName;

    private String imgUrl;

    private String major;

    private String nativePlace;

    private String phone;

    private String remark;

    private boolean yn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPlaceId() {
        return placeId;
    }

    public void setPlaceId(Long placeId) {
        this.placeId = placeId;
    }

    public String getPlaceNameCh() {
        return placeNameCh;
    }

    public void setPlaceNameCh(String placeNameCh) {
        this.placeNameCh = placeNameCh;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public boolean isYn() {
        return yn;
    }

    public void setYn(boolean yn) {
        this.yn = yn;
    }
}
