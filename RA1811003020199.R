library(robotstxt)
path<-paths_allowed("https://scrapethissite.com/pages/simple/")
link<-"https://scrapethissite.com/pages/simple/"
#Read the website
library(rvest)
web<-read_html(link)
Name<-web%>%html_nodes(".country-name")%>%html_text()
Capital<-web%>%html_nodes(".country-capital")%>%html_text()
Population<-web%>%html_nodes(".country-population")%>%html_text()
country.list=data.frame(Name,Capital,Population)
View(country.list)
write.csv(country.list,"country.csv")
