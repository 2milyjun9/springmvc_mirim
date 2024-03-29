package com.junefw.infra.common.constants;


public final class Constants {

//페이징
public static final int ROW_NUM_TO_SHOW = 10;
public static final int PAGE_NUM_TO_SHOW = 10;

//인서트, 업데이트 후 페이지 전환 타입  1:폼, 2리스트
public static final int INSERT_AFTER_TYPE=1;
public static final int UPDATE_AFTER_TYPE=1;

public static final int SESSION_MINUTE = 30;

/* public static final String URL_LOGINFORM = "/member/loginForm"; */
public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";
public static final String DATE_FORMAT_BASIC = "yyyy-MM-dd";

public static final String TIME_FORMAT_BASIC = "HH:mm:ss";


public static int DATE_INTERVAL = -30;

public static final String UPLOAD_PATH_PREFIX = "C:/factory/ws_sts_4130/springmvc_mirim/src/main/webapp/resources/uploaded/";
	
}