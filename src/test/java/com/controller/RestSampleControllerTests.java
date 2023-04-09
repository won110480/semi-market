package com.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.model.SampleVO;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.google.gson.Gson;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
	})
public class RestSampleControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	@Test
	 public void testConvert() throws Exception{
	  SampleVO sv = new SampleVO();
	  sv.setMno(1);
	  sv.setFirstname("길동");
	  sv.setLastname("홍");
	  String jsonStr = new Gson().toJson(sv);
	  //Logger.getLogger("test="+jsonStr);
	  System.out.println("test="+jsonStr);
	  mockMvc.perform(post("/sample/memberRequestBody")
	    .contentType(MediaType.APPLICATION_JSON)
	    .content(jsonStr))
	    .andExpect(status().is(200));
			
	}
	
	
}
