package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginCheckFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // 요청의 필터 처리 : request
        // 회원의 로그인 여부 확인!! : session의 속성에 회원의 로그인 정보를 가지고 있는지 확인

        // 1.session 객체를 구한다. request.getSession(false)

        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpSession session = httpServletRequest.getSession(false);
        // getSession(true) = 무조건 새로운 세션 객체를 반환
        // getSession(false) = 세션객체가 없다면 null 반환
        // getSession() = 세션객체가 있다면 현재 세션을 반환, 없다면 새로운 세션을 생성해서 반환

        // 세션객체에 userName 속성이 있다면 원래 요청 처리를 진행
        // 없다면 로그인폼으로 이동동
        if(session != null && session.getAttribute("userName") != null){
            filterChain.doFilter(servletRequest, servletResponse);
        }else{
            RequestDispatcher dispatcher = servletRequest.getRequestDispatcher("/member/loginForm.jsp");
            dispatcher.forward(servletRequest,servletResponse);
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }

}
