package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;


@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private DataSource dataSource;

    @Override
    protected void  configure(AuthenticationManagerBuilder auth) throws  Exception{
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select username,password,enabled " +
                        "from users "
                + "where username = ?")
                .authoritiesByUsernameQuery("select username,authority "
                + "from authorities "
                + "where username = ?").passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure (HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/","/exchange","/enquiry_td").permitAll()
                .antMatchers("/enquiry","/enquiry-d","/enquiry-m","/update").hasRole("STUDENT")
                .antMatchers("/profile").hasAnyRole("STUDENT","TEACHER")
                .antMatchers("/enquiry-td","/enquiry-tm","/enquiry-tq","/fio_t","/enquiry_t","/enquiry_update","/enquiry_update","/enquiry_updateH","enquiry_save","enquiry_saveH").hasRole("TEACHER")
                .and().formLogin().loginPage("/login").permitAll()
                .and().logout(logout -> logout
                        .logoutUrl("/my/logout")
                        .logoutSuccessUrl("/home")
                );
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

}
