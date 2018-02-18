import newspaper
# test = Article('https://www.kompasiana.com/croco/59fab960c226f95d2563f222/bagaimana-memilih-mobile-apps-developer-yang-tepat',language='id')
# test.download()
# test.parse()
# print(test.text)
tribun_paper = newspaper.build('http://indianexpress.com/article/india/haj-subsidy-abolished-muslims-mukhtar-abbas-naqvi-islam/', language ='en', fetch_images=False,)
for article in tribun_paper.articles:
	article.download()
	article.parse()
	print(article.text)

	

