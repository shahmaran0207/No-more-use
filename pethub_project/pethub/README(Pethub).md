# 🐶 PetHub Project
***
![title](img.png)
***

# 📑 목차
***
* #### [개요](#-개요)
* #### [프로젝트 소개](#-프로젝트-소개)
* #### [개발 기간](#-개발-기간)
* #### [멤버 구성 및 담당 항목](#-멤버-구성-및-담당-항목)
* #### [개발 환경](#-개발-환경)
* #### [배포 주소](#-배포-주소)
* #### [유스케이스 다이어그램](#-유스케이스-다이어그램)
* #### [아키텍쳐](#-아키텍쳐)


# 📒 개요
***
* #### `[스마트혼합](디지털컨버전스)` 전자정부기반 e커머스 융합 SW 개발자 양성 과정 중 팀 프로젝트를 진행하며 제작한 Web-Page 코드입니다.
* #### Spring Boot를 활용하여 다양한 Pet 관련 용품을 카테고리 별로 구분하여 판매하는 쇼핑몰 환경을 구축하였습니다.
* #### Web-Site 이용자들이 자유롭게 의견을 나눌 수 있는 커뮤니티 공간을 별도 구현하였습니다.


# 💻 프로젝트 소개
***
### 다양한 Pet 용품을 판매하는 쇼핑몰 환경 구축
<details><summary> 세부 사항 </summary>

* Dog, Cat, Bird, ETC 등 다양한 생물종에 대응하는 상품들을 카테고리화하여 구분하는 것으로 Web-Site 이용자의 사용감을 증진.


* 상품 별로 Food, Snack, Clean, Beauty, Toy, Housing, ETC 등의 상품 타입을 구분하는 것으로 Web-Site 이용자의 사용감을 증진.


</details>

### 상품의 상세한 정보 및 평점을 직관적으로 시각화
<details><summary> 세부 사항 </summary>

* 상품 별로 상세 설명 페이지와 이미지 저장용 스토리지를 연동하여 시각 자료 출력을 구현.


* 상품 구매자의 후기 및 평점 등록 시스템을 구현하여 사용자의 상품 선택에 참고가 될 공통 지표를 제공.


</details>

### 동종 업계 간 경쟁력을 확보하기 위한 혜택 및 사용자 편의성 시스템 제공
<details><summary> 세부 사항 </summary>

* 사용자가 물품 구매 시 적용 가능한 할인을 다양한 조건부의 쿠폰 형태로 제공하여 별도 관리.


* 광고성 정보 수신 동의자에 한정해 공지사항 글 생성시 해당 내용을 Email 수신 가능하도록 환경 구현.


* 대중의 사용도가 높은 SNS(Naver, Kakaotalk, Google) 정보로 Web-Site 가입 및 로그인이 가능하도록 별도 옵션 구현.


* 고객지원 메뉴를 별도 할당하여 자주 묻는 질문에 대한 답변을 리스트화, 그 외의 질문들은 추가적인 절차 없이 즉시 관리자에게 Email 송신 가능하도록 환경 구현.

</details>

### 사용자 간의 정보 공유에 최적화된 커뮤니티 시스템
<details><summary> 세부 사항 </summary>

* Web-Site 사용자 간에 Pet 관련 정보를 자유롭게 공유할 수 있는 주제 별로 세분화된 커뮤니티 환경 제공.


* 게시글 작성 시 업로드한 이미지를 저장용 스토리지에서 별도 관리하여 글 조회 시 출력 가능하도록 환경 구현.


* 각 게시글의 ID에 종속되는 댓글 CRUD 구현.


* 사용자가 작성한 글과 댓글을 일괄적으로 조회할 수 있도록 MyPage의 별도 메뉴 할당.

</details>

### 보안에 중점을 둔 사용자 검증 시스템
<details><summary> 세부 사항 </summary>

* ID 찾기 기능 사용 시, DB 상의 사용자 데이터에 저장된 Email 주소를 검증하여 인증 번호를 발송한 뒤 보안 토큰과 대조. 그 후 ID값 반환.


* PW 찾기 기능 사용 시, DB 상의 사용자 데이터에 저장된 ID와 Email 정보를 교차 검증하여 인증 번호를 발송한 뒤 보안 토큰과 대조. 그 후 난수 생성된 임시 PW값 반환.


* 회원 정보 수정 시, 기존의 사용자 PW를 검증하는 과정을 포함하여 데이터 무결성 보장.


* 비밀번호 암호화 해싱 알고리즘(SHA-512) 적용을 통한 DB 보안성 증대.


</details>

### 사용자와 Web-Site 관리자, 최고 등급 관리자의 권한 별 접근 항목 구분
<details><summary> 세부 사항 </summary>

* 주문 현황, 장바구니 등의 옵션에 대한 접근은 사용자에게만 노출, 상품 등록, 주문 관리 등의 옵션에 대한 접근은 관리자 직급에게만 노출 및 허용하여 사용자와 관리자 간의 직급에 따른 기능 혼선을 방지.


* 최고 등급 관리자는 관리자 권한의 부여 및 삭제가 가능하도록 제한하여 Web-Site 접속자의 관점에 따른 USECASE 상세화.


</details>

### 손 쉽게 관리 및 조회할 수 있는 사용자 주문 목록
<details><summary> 세부 사항 </summary>

* 주문 현황에 대한 상세한 정보를 세분화된 가시성을 바탕으로 사용자에게 제공하여 상품 이밎, 주문 상태, 주문 물품 갯수 및 주문 총 구매 금액 등의 정보를 한 눈에 쉽게 파악할 수 있도록 구현.


* 물품 구매 시 장바구니에 구매 관련 정보를 저장하여 결제 과정 상의 연속성을 제공.


 </details>


### 상징적이고 효용적인 Web-Page Design
<details><summary> 세부 사항 </summary>

* 친근감 있고 편안한 인상을 주는 따뜻한 색감의 색상을 위주로 구성한 Design.


* Web-Page의 목적성을 시각화한 다양한 형태의 자료 활용.

  </details>


# 📆 개발 기간
***
### 2024.05.31 ~ 2024.06.17


# 👥 멤버 구성 및 담당 항목
***
* #### 곽동열 : 소셜 로그인 기능 구현
* #### 김태환 : 커뮤니티 전반 기능 구현
* #### 박정은 : 
* #### 서강혁 : 메일서비스, AWS EC2/S3, DOCKER APP 및 DB 빌드, Front-End(ThymeLeaf, TailWindCSS), 모든 파일(S3에 저장) 및 메일서비스 로직 구현, 관리자관련 로직 구현
* #### 이승환 : 
* #### 함현우 : DataBase 설계, 제작 및 유지 관리, 권한 별 게시판 CRUD Interceptor 기능 구현, 다이어그램 설계, ReadMe 작성, PowerPoint 제작


# ⚙️ 개발 환경
***
* #### Configuration Management : ![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white) ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
* #### Language : ![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white) ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white) ![TailwindCSS](https://img.shields.io/badge/tailwindcss-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)
* #### IDEs : ![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)
* #### Hosting : ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
* #### Frameworks :![Thymeleaf](https://img.shields.io/badge/Thymeleaf-%23005C0F.svg?style=for-the-badge&logo=Thymeleaf&logoColor=white) ![SpringBoot](https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
* #### Database : ![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
* #### Testing : ![JUnit5](https://img.shields.io/badge/JUnit5-f5f5f5?style=for-the-badge&logo=junit5&logoColor=dc524a)
* #### Other : ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)


# 🌏 배포 주소
***
### Web-Page : 


# 🔧 유스케이스 다이어그램
*** 
### Use Case : Member, Non-Member, Admin, Super Admin
![usecase.drawio.png](usecase.drawio.png)


# 📌 아키텍쳐
*** 
### 디렉토리 구조
<details>
  <summary>상세 보기</summary>
  <pre>
    <code>
📦src
 ┣ 📂main
 ┃ ┣ 📂java
 ┃ ┃ ┗ 📂itbank
 ┃ ┃ ┃ ┗ 📂pethub
 ┃ ┃ ┃ ┃ ┣ 📂aop
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AopConfig.java // Spring AOP 설정 관리, 비밀번호 해싱을 위한 Aspect Bean 등록.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜PasswordEncoder.java // SHA-512 해시 알고리즘을 사용, 비밀번호 해싱 후 반환.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜PasswordHashAspect.java // 로그인, 회원가입, 회원 정보 수정 메서드 실행 이전에 해싱 기능 수행.
 ┃ ┃ ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Paging.java // 페이징 기능을 구현하기 위한 클래스. 요청 페이지와 총 게시물 수로 페이지 정보 계산 수행.
 ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┗ 📜S3Config.java // Simple Storage Service(파일 업로드, 다운로드, 삭제 관리) 클라이언트 설정을 위한 Spring 설정.
 ┃ ┃ ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AdminController.java // 관리자 기능 제어를 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜BoardController.java // 게시판 및 댓글 전반 기능(CRUD) 구현 컨트롤러. 
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ContactController.java // 관리 지원 기능을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜FileController.java // 파일 업로드 및 다운로드 기능을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜HomeController.java // 메인 화면 구성을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ImageController.java // 이미지 업로드 기능을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜MemberController.java // 멤버 관리 기능을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜OrderController.java // 주문 전반 관리 기능을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ShopController.java // 쇼핑몰 기능을 위한 컨트롤러.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Test.java
 ┃ ┃ ┃ ┃ ┣ 📂interceptor
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AdminInterceptor.java // 관리자 권한이 필요한 요소(공지사항 작성)등을 제어하는 인터셉터.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AuthorInterceptor.java // 글 작성자와 세션 상 접속해있는 사용자가 불일치 할 경우 제어하는 인터셉터.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LoginInterceptor.java // 비로그인 상태일 때 로그인이 필요한 항목 접근 시 제어하는 인터셉터.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ReplyInterceptor.java // 댓글 작성자와 세션 상 접속해있는 사용자가 불일치 할 경우 제어하는 인터셉터.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜WebConfig.java // 인터셉터 매핑을 위한 설정 관리.
 ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AdminDAO.java // 관리자 기능 관련 DB 접근 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜BoardDAO.java // 게시판 기능 관련 DB 접근 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜MemberDAO.java // 회원 관리 기능 관련 DB 접근 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜OrderDAO.java // 주문 관리 기능 관련 DB 접근 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ShopDAO.java // 쇼핑몰 기능 관련 DB 접근 객체.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜TestDAO.java // 테스트용 DB 접근 객체.
 ┃ ┃ ┃ ┃ ┣ 📂service
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AdminService.java // 관리자 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜BoardService.java // 게시판 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜EmailService.java // 이메일 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜FileService.java // 파일 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ImageService.java // 이미지 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜MemberService.java // 회원 관리 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜OrderService.java // 주문 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜ShopService.java // 쇼핑몰 기능 관련 비즈니스 로직 객체.
 ┃ ┃ ┃ ┃ ┣ 📂vo
 ┃ ┃ ┃ ┃ ┃ ┣ 📜BoardVO.java // 게시판 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ContactForm.java // 고객 지원 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜CouponVO.java // 쿠폰 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜DeliveryVO.java // 배송 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ItemVO.java // 상품 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜MemberVO.java // 회원 관리 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜OrderVO.java // 주문 관리 기능 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜ReplyVO.java // 댓글 관련 DB 매핑 객체.
 ┃ ┃ ┃ ┃ ┗ 📜PethubApplication.java // Spring Boot Application 진입점.
 ┃ ┗ 📂resources
 ┃ ┃ ┣ 📂templates
 ┃ ┃ ┃ ┣ 📂admin
 ┃ ┃ ┃ ┃ ┣ 📜insert.html // 관리자 등록을 위한 view.
 ┃ ┃ ┃ ┃ ┣ 📜manage_orders.html // 배송 상태 관리를 위한 view.
 ┃ ┃ ┃ ┃ ┣ 📜newCoupon.html // 새로운 쿠폰 생성을 위한 view.
 ┃ ┃ ┃ ┃ ┗ 📜product_registration.html // 제품 등록을 위한 view.
 ┃ ┃ ┃ ┣ 📂board
 ┃ ┃ ┃ ┃ ┣ 📜bird.html // 새 주제 게시판 전체 list view.
 ┃ ┃ ┃ ┃ ┣ 📜cat.html // 고양이 주제 게시판 전체 list view.
 ┃ ┃ ┃ ┃ ┣ 📜dog.html // 개 주제 게시판 전체 list view.
 ┃ ┃ ┃ ┃ ┣ 📜etc.html // 기타 주제 게시판 전체 list view.
 ┃ ┃ ┃ ┃ ┣ 📜free.html // 자유 주제 게시판 전체 list view.
 ┃ ┃ ┃ ┃ ┣ 📜help.html // 고객 지원 페이지 view.
 ┃ ┃ ┃ ┃ ┣ 📜list.html // 전체 페이지 view.
 ┃ ┃ ┃ ┃ ┣ 📜notice.html // 공지사항 게시판 전체 list view.
 ┃ ┃ ┃ ┃ ┣ 📜popUp.html // 댓글 수정을 위한 popUp view.
 ┃ ┃ ┃ ┃ ┣ 📜view.html // 상세 글 보기 페이지를 위한 view.
 ┃ ┃ ┃ ┃ ┣ 📜write.html // 글 작성 view.
 ┃ ┃ ┃ ┃ ┣ 📜wroteBoard.html // 내가 작성한 글을 조회하기 위한 list view.
 ┃ ┃ ┃ ┃ ┗ 📜wroteReply.html // 내가 작성한 댓글을 조회하기 위한 list view.
 ┃ ┃ ┃ ┣ 📂mall
 ┃ ┃ ┃ ┃ ┣ 📂order
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cart.html // 장바구니 view.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜orderStatus.html // 주문 상태 view.
 ┃ ┃ ┃ ┃ ┗ 📂shop
 ┃ ┃ ┃ ┃ ┃ ┣ 📂category
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜category_view.html // 상품 분류를 위한 view.
 ┃ ┃ ┃ ┃ ┃ ┣ 📜main.html // 쇼핑몰 메인 Web-Page 출력을 위한 view.
 ┃ ┃ ┃ ┃ ┃ ┗ 📜shopHeader.html // 쇼핑몰 검색 및 카테고리 선택을 위한 header view.
 ┃ ┃ ┃ ┣ 📂member
 ┃ ┃ ┃ ┃ ┣ 📜findAcc.html // 계정 찾기 Page view.
 ┃ ┃ ┃ ┃ ┣ 📜login.html // 로그인 Page view.
 ┃ ┃ ┃ ┃ ┣ 📜memberUpdate.html // 회원 정보 수정 Page view.
 ┃ ┃ ┃ ┃ ┣ 📜myPage.html // MyPage view.
 ┃ ┃ ┃ ┃ ┣ 📜myPageAside.html // Mypage 사이드 메뉴 view.
 ┃ ┃ ┃ ┃ ┗ 📜signUp.html // 회원 가입 view.
 ┃ ┃ ┃ ┣ 📜footer.html // Web-Page 하단 footer view.
 ┃ ┃ ┃ ┣ 📜header.html // Web-Page 상단 header view.
 ┃ ┃ ┃ ┣ 📜home.html // 메인 화면 view.
 ┃ ┃ ┃ ┗ 📜test.html // 테스트용 view.
 ┃ ┃ ┗ 📜application.yml
 ┗ 📂test
 ┃ ┗ 📂java
 ┃ ┃ ┗ 📂itbank
 ┃ ┃ ┃ ┗ 📂pethub
 ┃ ┃ ┃ ┃ ┗ 📜PethubApplicationTests.java // Test Application 진입점.
</code>
</pre>
</details>



