package com.entity;

import java.util.List;

public class PageBean {

	//��ǰҳ
	private Integer currentPage;
	//�ܼ�¼��
	private Integer totalCount;
	//ÿҳ��ʾ��¼��
	private Integer pageSize;
	//��ҳ��
	private Integer totalPage;
	//��ʼλ��
	private Integer begin;
	//ÿҳ��¼��list����
	private List<Person> list;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getBegin() {
		return begin;
	}
	public void setBegin(Integer begin) {
		this.begin = begin;
	}
	public List<Person> getList() {
		return list;
	}
	public void setList(List<Person> list) {
		this.list = list;
	}
	
}
