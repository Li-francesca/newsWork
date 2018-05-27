package entity;

import java.util.List;

/**
 * 分页
 */
public class PagingNews<T> {

	private static final long serialVersionUID = 182961025911047139L;
	
	private int pageSize;//每页显示多少条记录
	
	private  int currentPage;//当前第几页数据
	
	private int totalRecord;//一共多少条记录
	
	private int totalPage;//一共多少页记录
	
	private String url;//页面路径
	
	private List<T> dataList;//要显示的数据

	public int getMp(){//获取最大页数
		int mp = totalRecord /pageSize;
		return totalRecord %  pageSize==0?mp: mp+1;
	}
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public List<T> getDataList() {
		return dataList;
	}

	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}

}
