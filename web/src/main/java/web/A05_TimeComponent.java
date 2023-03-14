package web;

import java.util.TimeZone;

import org.springframework.stereotype.Component;

@Component
public class A05_TimeComponent {
	public A05_TimeComponent(){
		TimeZone tz = TimeZone.getTimeZone("Asia/Seouls");
	    TimeZone.setDefault(tz);			
	}
}
