package org.shock.whatisjava;


import org.junit.BeforeClass;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SpringInitTestCase {
	protected static ApplicationContext ac;

	@BeforeClass
	public static void runBeforeEveryClass() {
		ac = new FileSystemXmlApplicationContext(
				new String[]{"src/main/java/applicationContext.xml"});
	}

}
