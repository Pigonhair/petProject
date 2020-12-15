package com.ib.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.ib.dao.IbDAO;
import com.ib.dto.IbDTO;
import com.ib.dto.Ibpaging;

import controller.CommandAction;

public class IbListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int pg = Integer.parseInt(request.getParameter("pg"));
			
		//select-DB
		int pageSize = 6;
		int endNum= pg*pageSize; // 6건씩 보여줌 한 페이지에
		int startNum = endNum-(pageSize-1); // -5
		
		Map<String,Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		IbDAO dao = new IbDAO();
		List<IbDTO> list = dao.getImageList(map);
		
		//페이지처리
		Ibpaging paging = new Ibpaging(pg, 2 , pageSize); // 현재페이지,표시할 페이지수, 출력할게시물수
		paging.makePagingHTML();
		
		//request객체에 등록
		request.setAttribute("list", list);
		request.setAttribute("pg", pg);
		request.setAttribute("paging", paging);
		return "dogCompany.jsp";
	}

}
