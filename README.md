# web-archives-queries
 
 Preparatory work to create a pipeline enabling analysts to retrieve and query web archives for a given date range and get relevant documents assessed by semi-supervised NLP model.

 ## Example use case

Find documents related to the fake letter from the CEO of BlackRock sent to several media outlets on January 16 2019.<br>
Information about this case available in 2020 report by French Financial Markets Authority. <br> Neyret, A. Stock Market Cybercrime. Definition, cases and perspectives. *Autorité des Marchés Financiers*, 2020.

## Archives source

https://commoncrawl.org/ provides an open repository of web crawl data where archives can be accessed. Terms of use are available [here](https://commoncrawl.org/terms-of-use/).

## Process
### 1. Web crawl download
For the example use case, the first experiment  focuses on [WET archive](https://commoncrawl.org/the-data/get-started/).

### 2. Get relevant archives from web crawl
The current selected date range for the example goes from 15 to 17 January 2019 but it may be extended.<br> After gettings the relevant files, the package [warcio](https://github.com/webrecorder/warcio) is used to iterate over them.

### 3. Processing and modeling
Only documents in English are kept for this case. The model is then trained with [CoRex](https://github.com/gregversteeg/corex_topic) to retrieve relevant documents.

Gallagher, R. J., Reing, K., Kale, D., and Ver Steeg, G. "[Anchored Correlation Explanation: Topic Modeling with Minimal Domain Knowledge](https://www.transacl.org/ojs/index.php/tacl/article/view/1244)." *Transactions of the Association for Computational Linguistics (TACL)*, 2017.

https://medium.com/pew-research-center-decoded/overcoming-the-limitations-of-topic-models-with-a-semi-supervised-approach-b947374e0455

