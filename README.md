# :pushpin: 하루그린
> 간편한 UI/UX를 이용한 농수산물 전자상거래 C2C 서비스

</br>

## 1. 제작 기간 & 참여 인원
- 2023년 12월 15일 ~ 2024년 1월 24일
- 팀 프로젝트

</br>

## 2. 사용 기술
#### `Back-end`
  - Java 8
  - Spring Boot 2.3
  - Maven
  - MySQL 8.0.26
  - Python
  - Selenium
  - Tomcat  v8.5
  - Mybatis 3.4.6
#### `Front-end`
  - HTML/CSS
  - Bootstrap
  - Java Spring

</br>

## 3. ERD 설계
![ERD_최종](https://github.com/2023-SMHRD-IS-AI1/HRGR/assets/53556125/8d5b2450-15c1-470b-92c2-90b83be5a6ed)



## 4. 핵심 기능
이 서비스의 핵심 기능은 농산물 유통정보를 다루고 있는 KAMIS에서 API를 이용하여 매일 시세를 업데이트 하는 기능입니다.
사용자는 구매하고싶은 상품과 시세를 비교하여 합리적 소비를 할 수 있도록 구현했습니다.


<details>
<summary><b>핵심 기능 설명 펼치기</b></summary>
<div markdown="1">

### 4.1. 전체 흐름
![image](https://github.com/2023-SMHRD-IS-AI1/HRGR/assets/53556125/0ed6949d-a0c9-48d5-9015-75939e85b743)



### 4.2. 사용자 요청
![image](https://github.com/2023-SMHRD-IS-AI1/HRGR/assets/53556125/190f5726-dade-4902-b3eb-e5d74a5f349b)


- **Url 생성 후 연결** 
  - apiUrl 에 URL을 문자열 형태로 정의 후 api키값과 아이디값,데이터 형식을 요청합니다.
  - URL를 생성한 뒤 HttpURLConnection을 열어 연결을 설정하고 GET방식으로 요청합니다.

- **응답 데이터 변환**
  -  HTTP 연결 객체로부터 입력 스트림을 얻어오고 감싼 데이터를 BufferedReader를 사용하여 한 줄씩 읽어들이고, 데이터가 null이 아닐 때까지 계속 반복합니다.
  - 응답 데이터인 response를 JSONobject로 파싱합니다. 그 후 JSONArray로 캐스팅한 후 priceArray 변수에 저장합니다.

### 4.3. Controller
![image](https://github.com/2023-SMHRD-IS-AI1/HRGR/assets/53556125/3c4bb9fd-fd91-4063-ac16-41b4c7c144cd)

- **ForEach문을 이용하여 Object형식으로 변환** 
  - priceArray를 ForEach문을 사용하여 Object로 변환하여 반복 합니다.

- **문자열로 형 변환** 
  - 각 api에 해당하는 값들을 String으로 변환합니다

### 4.4. Service
![image](https://github.com/2023-SMHRD-IS-AI1/HRGR/assets/53556125/d2055b30-89b5-411c-8d38-1cad3339deb5)

- **데이터 전처리** 
  - String으로 변환한 데이터를 사용하기 위해 / 앞의 문자만 추출합니다.

- **필요한 데이터를 추출 후 model에 값 추가**
  - 필요한 데이터들의 값을 확인한 후 model에 데이터들을 저장합니다. 


</div>
</details>

</br>


## github 규칙
1.매일 아침 9시(주말포함) pull 받고 개발 들어가기<br>
2.아침 회의때 각자 당일 수정할 파일 정하기<br>
3.만약에 다른 사람이 수정하는 파일을 수정해야할 경우에는 그 사람에게 말하기<br>
4.push는 자신의 하루 분량이 끝났을때만 push하기<br>
5.push하기전에 github 톡방에 말하고 push하기, 말할때는 개발한 기능과 이름을 명시 ex) 로그인 기능 버그 수정 - 연성<br>
6.push 코멘트는(커밋 할 때 적는 코멘트) 자기가 개발한 기능과 자신의 이름 적기 ex) 로그인 기능 버그 수정 - 연성
