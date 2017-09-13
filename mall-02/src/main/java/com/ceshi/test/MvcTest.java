package com.ceshi.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.Request;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import com.ceshi.bean.Employee;
import com.github.pagehelper.PageInfo;

/**
 * 使用Spring测试模块提供的 测试请求功能，测试curd请求的正确性
 * Spring4 要servlet3.0以上
 * @author dhj
 *
 */

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"classpath:applicationContext.xml","file:src/main/webapp/WEB-INF/dispatcherServlet-servlet.xml"})
public class MvcTest {
	
	@Autowired
	WebApplicationContext context;
	//虚拟mvc请求，获取到处理结果
	MockMvc mockMvc;
	
	@Before
	public void initMokcMvc() {
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build(); 
	}

	@Test
	public void testPage() throws Exception{
		
		MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/emps").param("pn", "5")).andReturn();
		
		//请求成功以后，请求中会有pageInfo，我们可以取出pageInfo进行验证
	 	MockHttpServletRequest request =  mvcResult.getRequest();
		PageInfo pi = (PageInfo) request.getAttribute("pageInfo");
		System.out.println("当前页码:"+pi.getPageNum());
		System.out.println("总页码:"+pi.getPages());
		System.out.println("总记录数:"+pi.getTotal());
		System.out.println("在页面需要连续显示的页码");
		int[] nums = pi.getNavigatepageNums();
		for(int i : nums){
			System.out.println("  "+i);
		}
		
		
		//获取员工数据
		List<Employee> list = pi.getList();
		for(Employee employee : list) {
			System.out.println("ID:"+employee.getEmpId()+"==>name"+employee.getEmpName());
		}
	}
	
}
