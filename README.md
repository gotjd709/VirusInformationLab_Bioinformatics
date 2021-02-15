VirusLab_Bioinformatics
====================================

[감염병 연구실](http://www.msk.or.kr/webzine/201906/html/03.html)에서 연구할 때 사용하였던 코드들과 결과들입니다. (연구실 자료는 없으며 제가 작성한 코드만 올립니다.)

---------------------------------------------------------

 ## 1. Visualization and Clustering of sample region base on lat and lon using R


### 데이터 정보
- 박쥐를 중간 숙주로 하여 감염하는 바이러스의 염기서열을 검출하기 위해서 박쥐 분변 시료를 전국의 동굴에서 채취하였습니다. 데이터는 박쥐 분변 시료를 얻은 동굴의 위도와 경도와 동굴이름, 채취한 연도의 정보가 담겨 있습니다.

### 목적
- 다양한 연도에서 박쥐분변시료를 채취한 두 곳을 선정하여 연도가 변함에 따라 서열정보가 어떻게 바뀌는지 알아보고자 하였습니다. 박쥐의 행동 반경을 고려하여 지름이 10km이내의 지역에서 많은 시료가 존재해야 하고 다양한 연도가 담기면 좋습니다.

### 데이터 전처리

- 맨 처음에 위도와 좌표를 토대로 지도에 나타내보니 이상치들이 존재하였습니다. 당시의 상황을 알 수 없으므로 다시 측정못하고 데이터 수가 충분하기에 곧바로 제외하였습니다.  

### 데이터 분석방법

> 비지도 학습 방법인 군집분석을 활용

- 사용한 방법: 계층적 군집형성 방법 (Hierarchical Clustering)
- 사용한 변수: 위도와 경도 (latitude, longitude)
- 거리 측정 방법: 유클리드 거리측정 방법 (Euclidean Distance)
- 거리 계산 방법: 평균연결법 (Average Linkage)

### 결과 및 시각화
- 크게 5 군집(경기, 강원, 충청-경북, 전라, 제주)으로 나뉘게 되었습니다.
![123](https://user-images.githubusercontent.com/70703320/107883172-b6bec100-6f30-11eb-967e-597a5d3ef219.jpg)

- 첫번째로 제주 지역에서 한 군집을 선택하였습니다.
![345](https://user-images.githubusercontent.com/70703320/107883174-b9211b00-6f30-11eb-92ef-0bd1ef4607fc.jpg)

- 두번째로 경기 지역에서 한 군집을 선택하였습니다.
![추출](https://user-images.githubusercontent.com/70703320/107883173-b7efee00-6f30-11eb-9653-cb24c6127c0b.jpg)

-----------------------------------------------------

 ## 2. tMRCA of alpha and beta coronavirus using BEAST 2 package

**Alpha Coronavirus**와 **Beta Coronavirus**의 대표적인 Genus에 속하는 **Species**들을 선정하여 이들의 **spikegene**을 토대로 **tMRCA**를 구하기 위해 BEAST 2 package를 사용하였습니다. 자세한 연구결과는 다음과 같습니다.

### Introduction
> Coronavirus의 진화분기시점을 추정하는 것은 진화속도를 추정하여 다음 신종 coronavirus의 출현을 예측하는데 있어서 중요하다. 현재까지 Subfamily 차원에서 Coronavirus의 tMRCA를 추정한 선례는 돌연변이가 잘 일어나지 않는 RdRp gene을 토대로 그린 경우이다(Woo et al., 2012). 하지만 RdRp gene을 토대로 tMRCA를 추정하고자 한다면 바이러스의 생존적 측면에서 진화를 추정하였다고 할 수 있을 것이다. 바이러스가 사람의 ACE2에 spike protein을 통하여 감염을 한다는 것에 근거하여 spike gene을 토대로 tMRCA를 추정한다면 바이러스의 감염적 측면에서 진화를 추정할 수 있을 것이다. 아직까지 Coronavirus의 spike gene을 토대로 tMRCA를 구한 경우 species 차원에서 구한 것이 대부분이다. Spike gene을 토대로 Orthocoronavirinae의 phylogenetic tree를 그릴 경우 다른 gene들을 토대로 한 것과는 다르게 alpha, beta가 같은 분기 점을 갖지 않다고 알려져 있다(Woo et al., 2012). 현재까지 인간과 박쥐에게 감염되는 coronavirus는 alpha beta에서만 나타나고 있으므로 우리는 이번 연구에서 alpha coronavirus와 beta coronavirus의 subgenera를 대표하는 strain들을 taxon으로 하여 spike gene을 모아 MAFFT alignment를 한 후 BEAST2 package를 통하여 tMRCA를 추정하여 보았다.

### Method
> 1.	(data set 구성) NCBI사이트에서 alpha, beta coronavirus의 subgenus 중 collection date를 얻을 수 있는 strain들과 한국 동굴에서 얻은 박쥐 유래 coronavirus의 spike gene을 모아 FASTA file을 만들어 준 후 MAFFT alignment를 하였다.
> 2.	(BEAST2 조건) Phylogenetic tree를 얻는 program 중 tMRCA를 구할 수 있는 BEAST package의 최신버전(ver 2.5.2)을 사용하여 Clock Model 4가지 X Prior 5가지 = 20가지의 model을 MCMC 500,000,000조건에서 xml 파일을 만든 뒤 Nested Sampling을 기반으로 하여 Best model selection 하였다.
> 3.	선택된 모델에서 ①alpha beta coronavirus의 분기시점과 ②SARS-CoV2, RaTG 13과의 분기시점, ③SARS-CoV2, pangolin virus의 분기시점을 다른 논문에서 추정한 분기점과 비교한다. (table 3 확인)


 ### Result

**Table1. Taxon set list**
![image](https://user-images.githubusercontent.com/70703320/107933429-11ecc400-6fc2-11eb-93e3-13111143af7a.png)
> taxon set list. Alpha, Beta coronavirus의 subgenera로 구성하되 Alpha coronavirus에서 collection date 정보가 없는 Soracovirus와 Sunacovirus는 제외하였고, spike gene을 토대로 phylogenetic tree를 그릴 시 Beta coronavirus로 분류되는 Luchacovirus, Rhinacovirus도 제외(빨간 줄 처리)하였다. (Tsoleridis et al. 2019, Woo et al. 2012)

**Table2. Best Model Selection Results**
![image](https://user-images.githubusercontent.com/70703320/107933436-14e7b480-6fc2-11eb-8d67-402818f67229.png)
> Best Model Selection Results. 가장 최근의 Best Model Selection Tool인 Nested Sampling (Russel et al. 2019)을 사용하여Marginal Likelihood Value와 S.D(standard Deviation)을 구하였다. MCMC가 500,000,000일 때 seed number 12345에서 진행한 결과이다. 

**Table3. tMRCA of CoV**
![image](https://user-images.githubusercontent.com/70703320/107933945-c4248b80-6fc2-11eb-8ee3-fad7d5770c54.png)
> tMRCA of CoV. alpha beta coronavirus의 분기시점과 SARS-CoV2, RaTG 13과의 분기시점, SARS-CoV2, pangolin virus의 분기시점을 다른 논문에서 추정한 분기점과 비교한다. Alpha CoV와 Beta CoV는 RdRp gene을 기반으로 (Woo et al. 2012) SARS-CoV2와 RaTG13, Pangolin virus는 NRR gene을 기반으로 (Boni et al. 2020) 구한 바가 있다.

**Figure1. Phylogenetic tree of Alpha and Beta CoV**
![image](https://user-images.githubusercontent.com/70703320/102921416-b1fd0400-44cf-11eb-8a10-b639b7b13ee3.png)
> Phylogenetic tree of Alpha and Beta CoV. Best Model로 선정된 Clock Model: Relaxed Clock Exponential, Prior: Coalescent Bayesian Skyline의 Phylogenetic tree이다. 이번 연구에서 tMRCA를 확인하고자 한 Alpha와 Beta의 분기시점, SARS-CoV-2와 RaTG13의 분기시점, SARS-CoV-2와 pangolin virus의 분기시점을 95%신뢰구간과 함께 표시하였다.

### Reference
> 1.	Woo. et al. Discovery of Seven Novel Mammalian and Avian Coronaviruses in the Genus Deltacoronavirus Supports Bat Coronaviruses as the Gene Source of Alphacoronavirus and Betacoronavirus and Avian Coronaviruses as the Gene Source of Gammacoronavirus and Deltacoronavirus. J Virol, 86(7): 3995–4008. (2012).
> 2.	Tsoleridis, T.; Chappell, J.G.; Onianwa, O.; Marston, D.A.; Fooks, A.R.; Monchatre-Leroy, E.; Umhang, G.; Müller, M.A.; Drexler, J.F.; Drosten, C.; Tarlinton, R.E.; McClure, C.P.; Holmes, E.C.; Ball, J.K. Shared Common Ancestry of Rodent Alphacoronaviruses Sampled Globally. Viruses, 11, 125. (2019)
> 3.	Han Y, Du J, Su H, Zhang J, Zhu G, Zhang S, Wu Z and Jin Q. Identification of Diverse Bat Alphacoronaviruses and Betacoronaviruses in China Provides New Insights into the Evolution and Origin of Coronavirus-Related Diseases. Front. Microbiol. 10:1900. (2019).
> 4.	Boni, M.F., Lemey, P., Jiang, X. et al. Evolutionary origins of the SARS-CoV-2 sarbecovirus lineage responsible for the COVID-19 pandemic. Nat Microbiol (2020).
> 5.	Patricio Maturana Russel, Brendon J Brewer, Steffen Klaere, Remco R Bouckaert, Model Selection and Parameter Inference in Phylogenetics Using Nested Sampling, Systematic Biology, Volume 68, Issue 2, Pages 219–233, (2019)

 
