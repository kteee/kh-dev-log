package com.kh.app.page.vo;

public class PageVo {
	
	private int listCount;		//게시글 총 갯수
	private int currentPage;	//현재 페이지 (사용자가 요청한 페이지)
	private int pageLimit;		//하단에 보여줄 페이지영역 페이지갯수
	private int boardLimit;		//한 페이지에 보여줄 게시글 최대갯수
	// 위의 4개를 가지고 아래 3개의 값을 구해낼거임
	private int maxPage;		//마지막 페이지
	private int startPage;		//페이징 영역 시작값
	private int endPage;		//페이징 영역 마지막 값
	private int offset;			//select 쿼리에서 몇개를 건너뛸지
	
	
	public PageVo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;
		
		this.maxPage = (int)Math.ceil((double)listCount / boardLimit);
		this.startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		this.endPage = startPage + pageLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		this.offset = boardLimit * (currentPage-1);
	}


	public int getListCount() {
		return listCount;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public int getPageLimit() {
		return pageLimit;
	}


	public int getBoardLimit() {
		return boardLimit;
	}


	public int getMaxPage() {
		return maxPage;
	}


	public int getStartPage() {
		return startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public int getOffset() {
		return offset;
	}
	
}
