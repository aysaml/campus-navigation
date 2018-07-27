package cn.edu.lnpu.cns.bean;

import java.util.List;

/**
 * 封装百度地图地点检索json对象
 *
 * @author wangning113
 * @since 2018/7/24
 */
public class BaiduMapSpot {
    private int status;

    private String message;

    private List<BaiduMapResult> result;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<BaiduMapResult> getResult() {
        return result;
    }

    public void setResult(List<BaiduMapResult> result) {
        this.result = result;
    }
}
