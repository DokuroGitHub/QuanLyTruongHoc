/**
 * 
 */
package org.javabase.apps.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @author OITI
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	UserDetailsService userDetailsService;

	@Autowired
	ObjectMapper objectMapper;

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	public DaoAuthenticationProvider authProvider() {
		DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
		authProvider.setUserDetailsService(userDetailsService);
		authProvider.setPasswordEncoder(passwordEncoder);
		return authProvider;
	}

	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authProvider());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().and().csrf().disable();

		http.authorizeRequests().antMatchers("/resources/**").permitAll().antMatchers("/dashboard/**").authenticated()
				.antMatchers("/**").permitAll()
//	        .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
				.and().formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password")
				.defaultSuccessUrl("/loginsuccess", true).failureUrl("/login?error=1").and().logout()
				.logoutUrl("/logout").logoutSuccessUrl("/home").and().exceptionHandling().accessDeniedPage("/404");
	}

}
