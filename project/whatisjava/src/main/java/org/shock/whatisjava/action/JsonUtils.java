package org.shock.whatisjava.action;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

public class JsonUtils {
	private static final ObjectMapper mapper =new ObjectMapper();
	public static String turn2Json(Object o) throws JsonGenerationException, JsonMappingException, IOException{
		return mapper.writeValueAsString(o);
	}
	public static Object turn2Object(String s,Class clazz) throws JsonParseException, JsonMappingException, IOException{
		return mapper.readValue(s, clazz);
	}
}
