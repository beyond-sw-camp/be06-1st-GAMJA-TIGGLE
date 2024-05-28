<p>
<h1 align="center"> DB 설계 프로젝트 🖥️</h1>


<div align="center">

![tiggle_naeme](https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/121721219/e04decd7-350f-4d2a-8391-05fb40010de1)

**[플레이 데이터] 한화시스템 BEYOND SW캠프/ TIGGGLE (💥TEAM GAMMA💥)**
</div>
<br>

<h1 align="center">🎫 티켓팅 및 교환 플랫폼 : TIGGLE 🎫</h1>
<br>

## 🥔 팀원 소개
|<img src="https://avatars.githubusercontent.com/u/81555158?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/96894900?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/117149045?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/121721219?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/152248322?v=4" width="150" height="150"/>|
|:-:|:-:|:-:|:-:|:-:|
|👑김동욱<br/>[@postrel63](https://github.com/postrel63)|지연희<br/>[@Aqulog](https://github.com/Aqulog)|차윤슬<br/>[@yunseul-dev](https://github.com/yunseul-dev)|이재룡<br/>[@ashd89](https://github.com/ashd89)|김은선<br/>[@kkkeess](https://github.com/kkkeess)|

<br>

## ✨ 프로젝트 기본 소개

- 문화 생활을 즐기는 사람들이 늘어나 **"티켓 사이트에 대한 관심과 사용량이 증가"** 하고 있는만큼,   
  **"티켓 거래를 하는 사람도 늘어났다"** 

- 하지만 사용 간의 거래의 특성상 **"안전성이 보장되지 않아 불법 가격 인상 및 사기 피해"** 가 늘어나고 있다. 
이에 **"Tiggle"** 은 개인간의 **"티켓 거래에 적절한 가격선과 안전성을 보장하는 울타리**"를 형성해 줌으로써 
 **<span style="color:blue">"티켓 거래 및 교환 플랫폼 서비스"</span>** 를 제공한다.

<br>

## 📚 기술 스택

&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white&color=black"></a></a>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white&color=ffa500"></a></a>
&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/MariaDB-003545?style=flat&logo=MariaDB&logoColor=white"/></a>
&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=flat&logo=springBoot&logoColor=white&color=green"/></a></a>
<br>

---
<br>

## 🧙 프로젝트 목표

### 감자들아 힘내... 💞

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
  <summary><b>😛 클러스터링 방식을 이용한 이유</b></summary>
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
  <summary><b>🧐 클러스터 환경에서 서버가 중단 되었을 때 문제 발생</b></summary>
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
  <summary><b>😑 해결방안</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 고가용성(HA) 구성</b></li>
      <li><b>✅ Galera Cluster 을 통하여 정보의 동기 방식 동기화를 적용할 계획</b></li>
  </div>
</details>
<br>

<details>
  <summary><b>😎 읽기&쓰기 작업 부하 분산 시</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 캐시 사용: Redis, Memcached 같은 인메모리 캐시를 사용</b></li>
      <li><b>✅ 주 데이터베이스(Primary Database) 에서는 쓰기 작업 처리, 변경 사항을 읽기 전용 레플리카에 복제</b></li>
  </div>
</details>
<br>

<details>
  <summary><b>💥 결론</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>✅ 프록시 서버 2대를 사용하여 클러스터 환경을 구성하면, 서버 중단 시에도 서비스 중단, 데이터 손실, 로드 집중 등의 문제를 효과적으로 해결할 수 있다.</b></li>
      <li><b>✅ 프록시 서버와 로드 밸런서를 통해 고가용성 로드 분산을 달성하고, 세션 클러스터링 및 외부 세션 저장소를 통해 세션 관리를 최적화 할 수 있다.</b></li>
     
  </div>
</details>
<br>

  <br>

---

## 👨‍💻 SQL 실행 결과 
<details>
  <summary><b>INSERT & SELECT</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>🧙USER</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/34026f2c-694f-4209-b0a8-ad21071fd481" alt="">
      <li><b>💰POINT</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/8ba7a25e-c13e-489d-8d7c-60587d167e8f" alt="">
      <li><b>❤️LIKE</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/96f4e1cb-7f2b-455e-b9a7-6d08e9066ff0" alt="">
      <li><b>🖥️CHATROOM</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/df6b6629-e048-4981-8b91-6fe833ff99cf" alt="">
      <li><b>✉️MESSAGE</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/01d7e5d0-4723-401e-9340-bd017b941d9b" alt="">
      <li><b>🧛ADMIN</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/c3202b7e-d825-4258-8179-bed52dda4019" alt="">
      <li><b>🪐CATEGORY</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/0a85b935-d382-4608-ac27-37db486671f1" alt="">
      <li><b>💺SEAT</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/16bb87af-2d97-4ffd-a157-b9ab9485aed9" alt="">
      <li><b>🎨SECTION</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/5074169c-a533-4a73-b1f9-b96cfbcd6992" alt="">
      <li><b>⌚TIMES</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/4e44f1f4-0145-4e03-81c4-4fd499c6e9a9" alt="">
      <li><b>💱EXCHANGE</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/15a40da6-4011-4097-bb77-7cd2a845d974" alt="">
      <li><b>🖼️GRADE</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/d290ac84-ceb8-43ef-9e4a-f7430521952a" alt="">
      <li><b>🎠LOCATION</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/c0f6248d-2cfa-4f79-adfe-5ab34ca0f6de" alt="">
      <li><b>👩‍💻PROGRAM</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/84acfa63-be7f-4088-b93b-5811ca15559a" alt="">
      <li><b>📻RESERVATION</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/c5df1d46-dfc2-4c27-88fa-a0e3b403e273" alt="">
      <li><b>✍️REVIEW_PERFORMANCE</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/590dcdad-a7d6-4026-bedc-68e0a3a879e3" alt="">
      <li><b>👨‍🏫RULE</b></li>
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/924a7a74-1ea1-43a2-a84d-bb8fb9ecc423" alt="">
     
    </ul>
  </div>
</details>

<details>
  <summary><b>PROGRAM</b></summary>
  <div markdown="1">
   <br>
    <ul>
      <li><b>🎀CATEGORY</b></li>       
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/9092c8bc-a4dc-4814-9974-9dfda754b1e7" alt="">
      <li><b>👻RULE</b></li> 
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/dd127365-d9db-4c1c-a75c-a3cf5807613f" alt="">
      <li><b>🌄GRADE</b></li>       
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/fa9c13c2-b721-4f6a-a350-358812cea28a" alt="">
      <li><b>🎪PROGRAM</b></li>    
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/894bdb99-5a7b-4e9e-9b09-47299eaf2736" alt="">
      <li><b>🌌LOCATION</b></li>          
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/b02b8c0c-abba-48e8-8526-99020c3cc3bb" alt="">
      <li><b>⏰TIMES</b></li>     
     <img src="https://github.com/beyond-sw-camp/be06-1st-GAMJA-TIGGLE/assets/96894900/a5e038dd-4209-4854-9bef-227a691570d7" alt="">
    </ul>
  </div>
</details>
<br>

## 💎 프로젝트 시연

<br>

## 🍟팀원

Team Leader : 🐯**김동욱**

Member : 🐶 **김은선** 🐺 **이재룡** 🐱 **지연희**
 🐰 **차윤슬**
