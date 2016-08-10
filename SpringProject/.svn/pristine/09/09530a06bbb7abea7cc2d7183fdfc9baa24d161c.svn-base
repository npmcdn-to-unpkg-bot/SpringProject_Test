package board.bean;

import org.springframework.stereotype.Component;

@Component("paging")
public class BoardPaging {
	private int currentPage;//현재페이지
	private int pageBlock;//[1][2][3][다음]
	private int pageSize;//1페이지당 5개씩
	private StringBuffer pagingHTML;
	
	private int totalA;
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public void setTotalA(int totalA) {
		this.totalA = totalA;
	}
	public StringBuffer getPagingHTML() {
		return pagingHTML;
	}
	
	public void makePagingHTML(){
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA+pageSize-1)/pageSize;//총페이지수
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalP) endPage = totalP;
		
		//------------------
		if(startPage > pageBlock)
			pagingHTML.append("[<span onclick='boardPaging("+(startPage-1)+")' id='paging'>이전</span>]");                 
		
		for(int i=startPage; i<=endPage; i++){
			if(i==currentPage)
				pagingHTML.append("[<span onclick='`("+i+")' id='currentPaging'>"+i+"</span>]");
			else
				pagingHTML.append("[<span onclick='boardPaging("+i+")' id='paging'>"+i+"</span>]");
		}
		
		if(endPage < totalP)
			pagingHTML.append("[<span onclick='boardPaging("+(endPage+1)+")' id='paging'>다음</span>]");
			
	}
}














