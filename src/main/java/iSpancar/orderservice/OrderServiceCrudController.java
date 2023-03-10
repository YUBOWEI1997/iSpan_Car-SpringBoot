package iSpancar.orderservice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
@RequestMapping("/backstage")

public class OrderServiceCrudController {

	@Autowired
	private OrderServiceService oService;

	@PostMapping("/orderserviceSelect.controller")
	public String findbyid(@RequestParam("ordername") String ordername, Model m) {
		OrderServiceBean resultBean = oService.findbyId(ordername);

		if (resultBean != null) {
			m.addAttribute("orderservice", resultBean);
			return "/orderservice/selectorderserviceone";
		}

		m.addAttribute("Result", "no Result");
		return "/orderservice/selectorderservice";
	}

	@Autowired
	private OrderServiceService oService1;

	@GetMapping("/orderserviceAllController")
	public String selectAll(Model model) {

		try {
			List<OrderServiceBean> list = oService1.findAllOrder();
			model.addAttribute("orderSelectall", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "/orderservice/selectorderserviceall";

	}

	@PostMapping("/orderserviceDeleteController")
	public String orderserviceDelete(@RequestParam("ordername") String ordername) {
		OrderServiceBean obean = new OrderServiceBean();
		System.out.println("------------------" + ordername);
		obean.setOrdername(ordername);
		oService.deleteById(obean);
		return "/orderservice/selectorderserviceall";

	}

	@PostMapping("/orderserviceInsert.controller")
	public String serviceInsert(@RequestParam("ordername") String ordername,
			@RequestParam("orderemail") String orderemail, @RequestParam("orderphonenumber") String orderphonenumber,
			@RequestParam("orderdate") String orderdate, @RequestParam("ordertime") String ordertime,
			@RequestParam("orderproduct") String orderproduct, @RequestParam("orderremarks") String orderremarks,
			@RequestParam("servicename")String servicename)
			throws IOException, SQLException {
		OrderServiceBean oBean = new OrderServiceBean();
		oBean.setOrdername(ordername);
		oBean.setOrderemail(orderemail);
		oBean.setOrderphonenumber(orderphonenumber);
		oBean.setOrderdate(orderdate);
		oBean.setOrdertime(ordertime);
		oBean.setOrderproduct(orderproduct);
		oBean.setOrderremarks(orderremarks);
		oBean.setServicename(servicename);
		
		oService.insert(oBean);
		System.out.println("1234");
		return "orderservice/addordersuccess";
	}

	@PostMapping("/serviceorderUpdateController")
	protected String serviceorderUpdate(@RequestParam("ordername") String ordername,
			@RequestParam("orderemail") String orderemail, @RequestParam("orderphonenumber") String orderphonenumber,
			@RequestParam("orderdate") String orderdate, @RequestParam("ordertime") String ordertime,
			@RequestParam("orderproduct") String orderproduct, @RequestParam("orderremarks") String orderremarks,
			@RequestParam("servicename") String servicename)
			throws IOException {

		OrderServiceBean oBean = oService.findbyId(ordername);
		List<OrderServiceBean> list = new ArrayList<>();
		list.add(oBean);
		OrderServiceBean originBean = new OrderServiceBean();
		for (OrderServiceBean oib : list) {
			originBean.setOrdername(oib.getOrdername());
			originBean.setOrderemail(oib.getOrderemail());
			originBean.setOrderphonenumber(oib.getOrderphonenumber());
			originBean.setOrderdate(oib.getOrderdate());
			originBean.setOrdertime(oib.getOrdertime());
			originBean.setOrderproduct(oib.getOrderproduct());
			originBean.setOrderremarks(oib.getOrderremarks());
			originBean.setServicename(oib.getServicename());
			
			String NewOrdername = (ordername.equals("")) ? originBean.getOrdername() : ordername;
			String NewOrderemail = (orderemail.equals("")) ? originBean.getOrderemail() : orderemail;
			String NewOrderphonenumber = (orderphonenumber.equals("")) ? originBean.getOrderphonenumber()
					: orderphonenumber;
			String NewOrderdate = (orderdate.equals("")) ? originBean.getOrderdate() : orderdate;
			String NewOrdertime = (ordertime.equals("")) ? originBean.getOrdertime() : ordertime;
			String NewOrderproduct = (orderproduct.equals("")) ? originBean.getOrderproduct() : orderproduct;
			String NewOrderremarks = (orderremarks.equals("")) ? originBean.getOrderremarks() : orderremarks;
			String NewServicename =(servicename.equals("")) ? originBean.getServicename() : servicename;
			
			OrderServiceBean bean = new OrderServiceBean(NewOrdername, NewOrderemail, NewOrderphonenumber, NewOrderdate,
					NewOrdertime, NewOrderproduct, NewOrderremarks , NewServicename);

			oService.updateByordername(bean);

		}
		return "orderservice/updateordersuccess";
	}

	// ??????Id???????????????????????????controller(???selectIdToUpdate)
	@PostMapping("/JumptoUpdateOrderService")
	public String selectIdToUpdateAction(@RequestParam("ordername") String ordername, Model m) {

		OrderServiceBean o1 = oService.findbyId(ordername);
		List<OrderServiceBean> list = new ArrayList<OrderServiceBean>();
		list.add(o1);
		System.out.println(list.size());
		m.addAttribute("toUpdate", list);

		return "orderservice/updateorder";
	}
	//-------------------------------??????--------------------------------
		//CSV
		  @GetMapping(value = "/serviceexportCsv.controller") 
		  public void exportCsv(HttpServletResponse response) throws IOException, SQLException { 
		      String fileName = "orderoutput.csv";   //??????CSV??????????????? 
		      response.setContentType("text/csv; charset=UTF-8");  //???????????????UTF-8????????????????????? 
		      response.setHeader("Content-Disposition", "attachment; filename=" + fileName); 

		      //????????????????????????BEAN ,????????????????????????list???
		      List<OrderServiceBean> beans = oService.findAllOrder(); 
		      try (PrintWriter writer = response.getWriter()) { 
		       //????????????csv??????????????? 
		          writer.println("???????????????,????????????,??????????????????,????????????,????????????,????????????,????????????,??????"); 
		          //????????????????????????????????? 
		          for (OrderServiceBean bean : beans) { 
		              writer.println(bean.getServicename() + ","  + bean.getOrdername() + "," + bean.getOrderemail() + "," + bean.getOrderphonenumber() 
		              + ","+ bean.getOrderdate() + "," + bean.getOrdertime() + "," + bean.getOrderproduct() + ","
		                + bean.getOrderremarks() ); 
		          } 
		      } 
		  }
		  //json
		  @GetMapping(value = "/serviceexportJson.controller") 
		  public void exportJson(HttpServletResponse response) throws IOException, SQLException {
		   List<OrderServiceBean> beans = oService.findAllOrder(); 
		   Map<String, OrderServiceBean> orderdata = new HashMap<>();
		   for (OrderServiceBean bean : beans) { 
			   orderdata.put(bean.getOrdername(), bean);
		    
		   }
		      response.setContentType("application/json;charset=UTF-8");
		      response.setHeader("Content-Disposition", "attachment; filename=orderdata.json");
		      response.getWriter().write(new ObjectMapper().writerWithDefaultPrettyPrinter().writeValueAsString(orderdata));
		    }
	

}
