package cn.edu.lnpu.cns.bean;

/**
 * 地点实体类
 *
 * @author wangning113
 * @since 2018/3/29
 */
public class Place {
    private Long id;

    private String placeNameCh;

    private String placeNameEn;

    private String alias;

    private String desc;

    private String createTime;

    private String updateTime;

    private String operator;

    private int yn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPlaceNameCh() {
        return placeNameCh;
    }

    public void setPlaceNameCh(String placeNameCh) {
        this.placeNameCh = placeNameCh;
    }

    public String getPlaceNameEn() {
        return placeNameEn;
    }

    public void setPlaceNameEn(String placeNameEn) {
        this.placeNameEn = placeNameEn;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public int getYn() {
        return yn;
    }

    public void setYn(int yn) {
        this.yn = yn;
    }
}
