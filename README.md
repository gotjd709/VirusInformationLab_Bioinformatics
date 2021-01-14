VirusLab_Bioinformatics
====================================

[감염병 연구실](http://www.msk.or.kr/webzine/201906/html/03.html)에서 연구할 때 사용하였던 코드들과 결과들입니다. (연구실 자료는 없으며 제가 작성한 코드만 올립니다.)

---------------------------------------------------------

 ## 1. Visualization and Clustering of sample region base on lat and lon using R

각 지역별 얻은 시료의 **위도**와 **경도**를 ggplot을 이용하여 시각화하고 이를 변수로 이용하여 **hierical clustering**을 한 자료입니다. 거리측정방법으로는 **average linkage**를, 거리계산방법으로는 **Euclidean method**를 사용하였습니다. 최종적으로 다음과 같은 결과를 얻었습니다.

전국 시료의 위치 군집화
![슬라이드8](https://user-images.githubusercontent.com/70703320/102921975-a3631c80-44d0-11eb-95a4-ed3e3b25301d.PNG)

선택 지역 안에서의 군집화
![슬라이드9](https://user-images.githubusercontent.com/70703320/102922099-d3122480-44d0-11eb-8032-0f5da67c7832.PNG)


-----------------------------------------------------

 ## 2. tMRCA of alpha and beta coronavirus using BEAST 2 package

**Alpha Coronavirus**와 **Beta Coronavirus**의 대표적인 Genus에 속하는 **Species**들을 선정하여 이들의 **spikegene**을 토대로 **tMRCA**를 구하기 위해 BEAST 2 package를 사용하였습니다. 최종적으로 다음과 같은 결과를 얻었습니다.

![image](https://user-images.githubusercontent.com/70703320/102921416-b1fd0400-44cf-11eb-8a10-b639b7b13ee3.png)

 
