package com.hblog.admin.interceptot;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -9177038552588490942L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ac = invocation.getInvocationContext();
		String username = (String) ac.getSession().get("username");
		if(username != null && !username.trim().equals("")){
			return invocation.invoke();
		}
		return Action.LOGIN;
	}

}
