package doseo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import doseo.model.Pharmacy;
import doseo.service.dsFacade;

@Controller
public class PharmacyController {
	@Autowired
	private dsFacade ds;
	
	public void setDs(dsFacade ds) {
		this.ds = ds;
	}
	
	@RequestMapping("pharmacy/searchPharm")
	public String goSearchForm() {
		return "pharmacy/searchPharmacy";
	}
	
	//0813
	@ResponseBody
	@RequestMapping(value="/pharmacy/ajax_getPharlist", method=RequestMethod.GET)
	public void pharmAjaxView(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("district") String district,
			@RequestParam("language") String language )throws Exception{
		//System.out.println(district + "," + language);
		JSONArray jArray = new JSONArray();//JSONArray객체생성
		
		//전체 언어에 대한 경우 + 언어를 특정한 경우로 나눠서 
		if (language.equals("All")) {
			ArrayList<Pharmacy> list = (ArrayList<Pharmacy>) ds.getPharmList(district);
			if (list.size() == 0) {//해당 결과가 없는 경우
				try { response.getWriter().print("null"); //response.getWriter로 프린트 해주면 통신 성공 
				} catch (Exception e) { 
					e.printStackTrace(); 
				} 
			}
			else {//검색 결과가 있는 경우
				for (int i = 0; i < list.size(); i++) {
					System.out.println(list.get(i).getName_eng());
					JSONObject jo = new JSONObject();//JSON객체생성
					jo.put("name_eng", list.get(i).getName_eng() );
					jo.put("name_kor", list.get(i).getName_kor());
					jo.put("tel", list.get(i).getTel());
					jo.put("detail", list.get(i).getDetail());
					jo.put("language", list.get(i).getLanguage());
					jArray.add(jo);	//JSON배열에 객체를 넣어줌
				}
				try { response.getWriter().print(jArray); //response.getWriter로 프린트 해주면 통신 성공 
				} catch (Exception e) { 
					e.printStackTrace(); 
				} 
			}
			
		}
		else {//언어 + 지역 선택한 경우
			ArrayList<Pharmacy> list = (ArrayList<Pharmacy>) ds.getPharmList2(district, language);
			if (list.size() == 0) {//해당 결과가 없는 경우
				try { response.getWriter().print("null"); //response.getWriter로 프린트 해주면 통신 성공 
				} catch (Exception e) { 
					e.printStackTrace(); 
				} 
			}
			else {//검색 결과가 있는 경우
				for (int i = 0; i < list.size(); i++) {
					System.out.println(list.get(i).getName_eng());
					JSONObject jo = new JSONObject();//JSON객체생성
					jo.put("name_eng", list.get(i).getName_eng() );
					jo.put("name_kor", list.get(i).getName_kor());
					jo.put("tel", list.get(i).getTel());
					jo.put("detail", list.get(i).getDetail());
					jArray.add(jo);	//JSON배열에 객체를 넣어줌
				}
				try { response.getWriter().print(jArray); //response.getWriter로 프린트 해주면 통신 성공 
				} catch (Exception e) { 
					e.printStackTrace(); 
				} 
			}
		}	
	}
}
