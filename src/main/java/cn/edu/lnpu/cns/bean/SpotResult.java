package cn.edu.lnpu.cns.bean;

/**
 * 封装vue 返回的suggest对象
 *
 * @author wangning113
 * @since 2018/7/27
 */
public class SpotResult {
    private String value;

    private String province;

    private String city;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
