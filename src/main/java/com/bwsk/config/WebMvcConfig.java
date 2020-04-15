package com.bwsk.config;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 图片绝对地址与虚拟地址映射
 */

@Component
public class WebMvcConfig implements WebMvcConfigurer {

	/**
	 * 虚拟路径配置
	 * 
	 * @param registry
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		String newrootPath = System.getProperty("user.dir") + "/upload";
		newrootPath = newrootPath.replaceAll("\\\\", "/");
		System.out.println("file:/" + newrootPath + "/video/");
		//registry.addResourceHandler("/image/video/**").addResourceLocations("file:/" + newrootPath + "/video/");
		//registry.addResourceHandler("/image/picture/**").addResourceLocations("file:/" + newrootPath + "/picture/");
		 registry.addResourceHandler("/image/picture/**").addResourceLocations("file:/www/javaweb/diary/upload/picture/");//linux
		 registry.addResourceHandler("/image/video/**").addResourceLocations("file:/www/javaweb/diary/upload/video/");//linux
		WebMvcConfigurer.super.addResourceHandlers(registry);
	}

}