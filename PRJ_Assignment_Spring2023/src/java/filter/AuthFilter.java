/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package filter;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig config) throws ServletException {
        // Initialization code goes here
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        // Get the URL path of the request
        String path = request.getRequestURI().substring(request.getContextPath().length());

        // Check if the user is trying to access a page under the "/lecturer/" directory
        if (path.startsWith("/lecturer/")) {

            // Check if the user is logged in
            HttpSession session = request.getSession(false);
            boolean isLoggedIn = (session != null && session.getAttribute("user") != null);

            if (!isLoggedIn) {
                // Redirect the user to the login page
                response.sendRedirect(request.getContextPath() + "/login");
                return;
            }
        }

        // If the user is logged in or is not trying to access a page under the "/lecturer/" directory, continue with the request
        chain.doFilter(req, res);
    }

    @Override
    public void destroy() {
        // Cleanup code goes here
    }
}

