VirusLab_Bioinformatics
====================================

[감염병 연구실](http://www.msk.or.kr/webzine/201906/html/03.html)에서 연구할 때 사용하였던 코드들과 결과들입니다. (연구실 자료는 없으며 제가 작성한 코드만 올립니다.)

---------------------------------------------------------

 ## 1. Visualization and Clustering of sample region base on lat and lon using R


### 데이터 정보
- 박쥐를 중간 숙주로 하여 감염하는 바이러스의 염기서열을 검출하기 위해서 박쥐 분변 시료를 전국의 동굴에서 채취하였습니다. 데이터는 박쥐 분변 시료를 얻은 동굴의 위도와 경도와 동굴이름, 채취한 연도의 정보가 담겨 있습니다.

### 목적
- 다양한 연도에서 박쥐분변시료를 채취한 두 곳을 선정하여 연도가 변함에 따라 서열정보가 어떻게 바뀌는지 알아보고자 한다. 박쥐의 행동 반경을 고려하여 지름이 10km이내의 지역에서 많은 시료가 존재해야 하고 다양한 연도가 담기면 좋다.

### 데이터 전처리

맨 처음에 위도와 좌표를 토대로 지도에 나타내보니 이상치들이 존재하였습니다. 당시의 상황을 알 수 없으므로 다시 측정못하고 데이터 수가 충분하기에 곧바로 제외하였습니다.  

### 데이터 분석방법

비지도 학습 방법인 군집분석을 활용

![군집분석](https://user-images.githubusercontent.com/70703320/107853103-6e7fa000-6e57-11eb-8342-e184708b4de9.jpg)

- 사용한 방법: 계층적 군집형성 방법 (Hierarchical Clustering)
- 사용한 변수: 위도와 경도 (latitude, longitude)
- 거리 측정 방법: 유클리드 거리측정 방법 (Euclidean Distance)
- 거리 계산 방법: 평균연결법 (Average Linkage)

### 결과 
- 거의 대부분이 지역별(강원-삼척, 강원-평창, 경기, 경북-문경)로 나뉘게 되었습니다. 

### 시각화



전국 시료의 위치 군집화
![슬라이드8](https://user-images.githubusercontent.com/70703320/102921975-a3631c80-44d0-11eb-95a4-ed3e3b25301d.PNG)

선택 지역 안에서의 군집화
![슬라이드9](https://user-images.githubusercontent.com/70703320/102922099-d3122480-44d0-11eb-8032-0f5da67c7832.PNG)


-----------------------------------------------------

 ## 2. tMRCA of alpha and beta coronavirus using BEAST 2 package

**Alpha Coronavirus**와 **Beta Coronavirus**의 대표적인 Genus에 속하는 **Species**들을 선정하여 이들의 **spikegene**을 토대로 **tMRCA**를 구하기 위해 BEAST 2 package를 사용하였습니다. 최종적으로 다음과 같은 결과를 얻었습니다.

![image](https://user-images.githubusercontent.com/70703320/102921416-b1fd0400-44cf-11eb-8a10-b639b7b13ee3.png)

 
