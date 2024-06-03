<br>
<h1 align="center">🎫 티켓팅 및 티켓 교환 플랫폼 🎫</h1>

<div align="center">

![tiggle_naeme](https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/121721219/e04decd7-350f-4d2a-8391-05fb40010de1)

**[플레이 데이터] 한화시스템 BEYOND SW캠프 / 프로젝트 팀 GAMJA**

</div>

<br>

## 🥔 팀원 소개
|<img src="https://avatars.githubusercontent.com/u/81555158?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/96894900?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/117149045?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/121721219?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/152248322?v=4" width="150" height="150"/>|
|:-:|:-:|:-:|:-:|:-:|
|👑김동욱<br/>[@postrel63](https://github.com/postrel63)|지연희<br/>[@Aqulog](https://github.com/Aqulog)|차윤슬<br/>[@yunseul-dev](https://github.com/yunseul-dev)|이재룡<br/>[@ashd89](https://github.com/ashd89)|김은선<br/>[@kkkeess](https://github.com/kkkeess)|

<br>

## ✨ 프로젝트 소개

- 문화 생활을 즐기는 사람들이 늘어나 **티켓 사이트에 대한 관심과 사용량이 증가** 하고 있는만큼,   
  **티켓 거래를 하는 사람도 늘어났다** 

- 하지만 사용 간의 거래의 특성상 **안전성이 보장되지 않아 불법 가격 인상 및 사기 피해** 가 늘어나고 있다. 
이에 **"Tiggle"** 은 개인간의 **티켓 거래에 적절한 가격선과 안전성을 보장하는 울타리**를 형성해 줌으로써 
 **<span style="color:blue">"티켓 거래 및 교환 플랫폼 서비스"</span>** 를 제공한다.

<br>

## 📚 기술 스택

&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white&color=black"></a></a>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white&color=ffa500"></a></a>
&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/MariaDB-003545?style=flat&logo=MariaDB&logoColor=white"/></a>
&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=flat&logo=springBoot&logoColor=white&color=green"/></a></a>

<br>

## 🧙 프로젝트 목표

1. **안전한 티켓 거래**: 사용자들이 사기 및 노쇼 걱정 없이 안전하게 티켓을 거래할 수 있도록 중개해줍니다.
2. **합리적인 가격**: 티켓 거래 시 합리적인 가격이 책정되도록 시스템을 형성하여 과도한 가격 인상을 방지합니다. 


<br>

## 📮 프로젝트 기획안

[프로젝트 기획안](https://docs.google.com/document/d/1DW2xby46I_4o6-kfmo1ElG_VLUaMxdFHGoBh323nAUI/edit)

<br>

## 📜 요구사항 정의서

[요구사항 정의서](https://docs.google.com/spreadsheets/d/1KeAbB1bevkvhCJd1plKs4cA-APQgmuO404CI84nYjlM/edit#gid=1277905399)
<br>

## 🎀 ERD 

![new 티글](https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/4fc6d33f-4599-4f0e-a7e0-6b3fdaf622c7)


## 💎 시스템 아키텍쳐 

![시스템 아키텍쳐](https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/121721219/d9a09f5e-e8d6-4fdf-abad-0513b9c72d14)


<br>

## 🎃 DR (재난 복구) 

<details>
  <summary><b>클러스터링 방식을 이용한 이유</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 실시간 데이터 동기화를 보장 및 백업 과정 단순화</b></li>
      <li><b>✅ 티켓팅으로 급격히 증가하는 트래픽을 처리하기 위한 노드 추가가 쉽다</b></li>
      <li><b>✅ 일부 노드의 장애 발생시에도, 서비스의 연속성 유지</b></li>
  </div>
</details>
<br>

<details>
  <summary><b>클러스터 환경에서 서버가 중단 되었을 때 문제 발생</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 서비스 중단</b></li>
      <li><b>✅ 데이터 손실</b></li>
      <li><b>✅ 로드 집중</b></li>
  </div>
</details>
<br>

<details>
  <summary><b>해결방안</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 고가용성(HA) 구성</b></li>
      <li><b>✅ Galera Cluster 을 통하여 정보의 동기 방식 동기화를 적용할 계획</b></li>
  </div>
</details>
<br>

<details>
  <summary><b>읽기&쓰기 작업 부하 분산 시</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 캐시 사용: Redis, Memcached 같은 인메모리 캐시를 사용</b></li>
      <li><b>✅ 주 데이터베이스(Primary Database) 에서는 쓰기 작업 처리, 변경 사항을 읽기 전용 레플리카에 복제</b></li>
  </div>
</details>
<br>

<details>
  <summary><b>결론</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 프록시 서버 2대를 사용하여 클러스터 환경을 구성하면, 서버 중단 시에도 서비스 중단, 데이터 손실, 로드 집중 등의 문제를 효과적으로 해결할 수 있다.</b></li>
      <li><b>✅ 프록시 서버와 로드 밸런서를 통해 고가용성 로드 분산을 달성하고, 세션 클러스터링 및 외부 세션 저장소를 통해 세션 관리를 최적화 할 수 있다.</b></li>
     
  </div>
</details>

<br>


## 👨‍💻 SQL 실행 결과 

### 회원

<details>
  <summary><b>회원가입</b></summary>
  <div markdown="1">
  <br>

  ```sql
  
  ```
  <img src="" alt="">
  </div>
</details>
<br>


<details>
  <summary><b>로그인</b></summary>
  <div markdown="1">
<br>

  ``` sql
  SELECT user.status
  FROM tiggle1000.user
  WHERE id = [유저가 입력한 id] AND password = [유저가 입력한 password];  
  # 'test' , 'qwer1234'
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/506d69cd-e533-4b42-b116-dfb172f42331" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>회원 정보 조회</b></summary>
  <div markdown="1">
<br>
개인 회원의 계정 정보를 조회합니다.

  ``` sql
  select name, email, id, password, point, address_name
  from user
  WHERE userId = [조회할 유저 idx]; # 1;  
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/0cb3646f-8b6e-4515-b09c-eb6bb20bea39" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>내 티켓 조회</b></summary>
  <div markdown="1">
<br>
나의 티켓 예약 기록을 조회합니다.

  ``` sql
select exchange.exchangeId, exchange.reservationId1, exchange.isSuccesed, exchange.createdAt, exchange.progressState
,reservation.reservationId, reservation.seatId, reservation.programId, reservation.ticketNumber, reservation.totalPrice, reservation.timesId,reservation.userId
from exchange
join reservation on exchange.reservationId1 = reservation.reservationId
join user on reservation.userId = user.userId
where reservation.userId = [조회할 유저 idx]; # 1
union
select exchange.exchangeId, exchange.reservationId1, exchange.isSuccesed, exchange.createdAt, exchange.progressState
,reservation.reservationId, reservation.seatId, reservation.programId, reservation.ticketNumber, reservation.totalPrice, reservation.timesId,reservation.userId
from exchange
join reservation on exchange.reservationId2 = reservation.reservationId
join user on reservation.userId = user.userId
where reservation.userId = [조회할 유저 idx]; # 1  
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/55d09883-a7f5-4858-a907-db4b42973aaa" alt="">
  </div>
</details>
<br>


<details>
  <summary><b>내가 작성한 리뷰 조회</b></summary>
  <div markdown="1">
<br>
나의 티켓 예약 기록을 조회합니다.

  ``` sql
SELECT review_program.reviewId, review_program.reservationId, review_program.content, review_program.createdAt, review_program.star
FROM review_program
JOIN reservation on review_program.reservationId = reservation.reservationId
join user on user.userId = reservation.userId
WHERE user.userId = [조회할 유저 idx]; #'1'
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/a9794f0e-89c3-4f86-b5d0-9db72c98f9eb" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>내 포인트 조회</b></summary>
  <div markdown="1">
<br>
나의 포인트 정보와 사용 이력을 조회합니다.

  ``` sql
  select user.userId, user.name, point.pointId, point.value, point.getOrLose, point.createdAt
  from user
  join point on user.userId = point.userId
  where user.userId = [조회할 유저 idx]; # 1
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/eb39b142-dec0-49b0-9e81-da50d2b89a0c" alt="">
  </div>
</details>
<br>


### 티켓팅

<details>
  <summary><b>공연 등록</b></summary>
  <div markdown="1">
<br>
관리자가 요청받은 공연 정보를 등록합니다.

  ``` sql

  ```
  <img src="" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>공연 목록 조회(카테고리 기준) </b></summary>
  <div markdown="1">
<br>
카테고리별로 공연을 조회합니다.

  ``` sql
SELECT program.programId, program.categoryId, program.programName, location.name, 
       program.reservationOpenDate, program.reservationCloseDate
FROM program
JOIN category ON program.categoryId = category.categoryId
JOIN location ON program.locationId = location.locationId
WHERE category.categoryId = [조회할 카테고리의 idx]; # 1
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/a9794f0e-89c3-4f86-b5d0-9db72c98f9eb" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>공연 상세페이지 조회</b></summary>
  <div markdown="1">
<br>
공연 제목, 이름, 시간, 러닝타임, 공연장 정보, 좌석 정보 등 공연에 관련된 상세 정보를 조회합니다.

  ``` sql
SELECT program.programId, program.programName, program.programStartDate, program.programEndDate, program.runtime, program.age, program_grade.price, grade.gradeName, program.programStartDate, program.programEndDate, times.round, times.limitEnterTime, times.date
FROM program
JOIN program_grade ON program_grade.programId = program.programId
JOIN grade ON grade.gradeId = program_grade.gradeId
JOIN times ON times.programId = program.programId
LEFT JOIN reservation ON reservation.programId = program.programId
LEFT JOIN exchange ON reservation.reservationId = exchange.reservationId1
WHERE program.programId = [조회할 공연 idx];  # 1 
  ```
  <img src="" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>공연 잔여좌석 조회</b></summary>
  <div markdown="1">
<br>
공연 상세페이지에서 관람하고자 하는 공연의 잔여좌석을 조회합니다.

  ``` sql
select seat.seatNumber, seat.section, times.date, times.round, program.programName, reservation.state from seat
left join reservation on reservation.seatId = seat.seatId 
left join program on program.programId = reservation.programId
left join times on reservation.timesId = times.timesId 
where times.round = 1 AND program.programName = "Mrs";
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/ad5fff14-2636-471b-b821-5f5607661a61" alt="">
  </div>
</details>
<br>


<details>
  <summary><b>티켓 예약하기</b></summary>
  <div markdown="1">
<br>
조회된 공연 정보를 통해 티켓을 예약합니다.

  ``` sql

  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/c221e582-18de-46bc-a542-b6b0efc9a8b8" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>교환 가능한 좌석 조회</b></summary>
  <div markdown="1">
<br>
예약된 좌석을 조회하고 교환 가능 상태를 확인하여 교환 가능한 좌석인지 조회합니다. 

  ``` sql
select * from
(select reservation.reservationId, reservation.userId, reservation.seatId, 
reservation.programId, reservation.state, reservation.requestLimit, reservation.timesId
from reservation
join seat
on reservation.seatId = seat.seatId
where reservation.programId = 1 and reservation.timesId = 1) as subquery
where subquery.state = 1;
  ```
  <img src="" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>교환하기</b></summary>
  <div markdown="1">
<br>
상호간 교환 협의가 된 이용자간 교환이 이뤄질 수 있습니다. 

  ``` sql

  ```
  <img src="" alt="">
  </div>
</details>
<br>

<details>
  <summary><b>공연 리뷰 조회</b></summary>
  <div markdown="1">
<br>
공연 리뷰를 조회합니다.

  ``` sql
SELECT user.id, review_program.content, review_program.createdAt, review_program.star
FROM review_program
JOIN reservation on review_program.reservationId = reservation.reservationId
join user on user.userId = reservation.userId
WHERE programId = [조회할 공연의 idx];  # 1
  ```
  <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/81555158/cfa58425-61ac-46df-bdda-dd06bc006171" alt="">
  </div>
</details>
<br>


## 💎 프로젝트 시연

