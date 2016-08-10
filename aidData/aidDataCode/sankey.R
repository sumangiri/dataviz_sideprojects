library('d3Network')
read.csv('../../Downloads/links_clf.csv')
nodes<-read.csv('../../Downloads/nodes_clf.csv', stringsAsFactors = F)
links<-read.csv('../../Downloads/links_clf.csv', stringsAsFactors = F)
links=links[c('source','target','weight')]     
nodes=nodes['id']
d3Sankey(Nodes = nodes, Links = links, Source = 'source',
         Target = 'target', Value = 'weight', NodeID = 'id',
         width = 650, height = 450, fontsize = 12,
         standAlone = TRUE, iframe = TRUE, file = '../../Downloads/demo_clf.html')


