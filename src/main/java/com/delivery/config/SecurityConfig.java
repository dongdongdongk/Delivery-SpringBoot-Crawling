package com.delivery.config;

import com.delivery.security.UserSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration //설정과 관련된 어노테이션
@EnableWebSecurity // 시큐리티 적용 어노테이션 추가
public class SecurityConfig {



    @Bean
        // @Component 와 비슷한 어노테이션 객체를 만들
        //public 을 선언하면 default로 바꾸라는 메세지 출력 (public WebSecurityCustromizer)
    WebSecurityCustomizer webSecurityConfig() {
        //Security에서 무시해야하는 URL 패턴 등록 (이미지 css 등 시큐리티가 필요없는 부분)
        return web -> web //-> :람다함수
                .ignoring() //"."으로 연결: 메서드 체이닝 //ignoring():무시하겠다
                .antMatchers("/img/**")
                .antMatchers("/css/**")
                .antMatchers("/js/**")
                .antMatchers("/favicon/**")  //웹브라우저에 들어가는 이미지
                .antMatchers("/resources/**");
    }

// 메서드 체이닝 예시) person.setName("John").setAge(30).setAddress("New York");
// 여러 개의 메서드 호출을 한 줄로 연결하여 사용하는 것

    @Bean          //public 을 사용하지 않고 매개변수로 http Security 를 받는다  // 권한에 따라 허용하는 url 설정
    SecurityFilterChain fiterChain(HttpSecurity httpSecurity)throws Exception{
        httpSecurity
                .cors()   //cors
                .and()    // 와
                .csrf()   // csrf 를
                .disable() // 활성화 하지 않겠다.
                .authorizeRequests()          // 권한 과 관련된 메서드
                .antMatchers("/").permitAll() //루트 밑에 시작하는걸 모두 허용하겠다(permitAll) 이후 아래에서 제한을 시작
//                .antMatchers("/admin").hasRole("ADMIN") // /adimn 을 가진 주소는 role ADMIN 만 허용
//                .antMatchers("/manager").hasAnyRole("ADMIN","MANAGER") //ADMIN 을 가지거나 MANAGER를 가진 사람만 허용 => 회원 한명당 하나의 ROLE를 가질때
//                .antMatchers("/user/join").permitAll()
//                .anyRequest().authenticated() //그외 나머지는 로그인 해야 볼수 있다 (authenticated = 로그인 해야 )

                .and()
                .httpBasic().and()
                .formLogin() //form 로그인을 사용할 수 있다.
                .loginPage("/user/userLogin")
//                .defaultSuccessUrl("/")
                .successHandler(new UserSuccessHandler()) //UserSuccessHandler 객체 생성 (로그인 성공시)
                .usernameParameter("id") //id 파라미터는 username이지만, 개발자가 다른 파라미터 이름을 사용할 때
//                .successHandler(new UserSuccessHandler())
//                .failureHandler(new UserLoginFailHandler())
                .failureUrl("/user/userLogin")
                .permitAll()    // 모두 허용
                .and()

                .logout()         // 로그아웃
                .logoutUrl("/user/userLogout")
                .logoutSuccessUrl("/") // logout에 성공하면 /로 redirect
//                .logoutSuccessHandler(userLogoutSucessHandler)
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")
                .permitAll();   // 모두 허용

        return httpSecurity.build(); //빌드해서 만들어 준다


    }
    @Bean
    public PasswordEncoder getPasswordEncoder() {  //패스워드 인코더 패스워드를 암호화  controller에 빈으로 등록된 BCryptPasswordEncoder를 자동 주입을 해줌
        return new BCryptPasswordEncoder();
    }

}
