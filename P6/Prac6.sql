use pubs2
go

select title, pub_name
from titles, publishers
where titles.pub_id=publishers.pub_id
go

select title, au_lname, au_fname
from titles, authors, titleauthor
where titles.title_id=titleauthor.title_id
and titleauthor.au_id=authors.au_id
go

select au_lname,au_fname,phone,address,city, state, country, postalcode, title
from authors,titles, salesdetail, titleauthor
where authors.au_id=titleauthor.au_id and titleauthor.title_id=salesdetail.title_id
go

select pub_name, type
from titles, publishers
where titles.pub_id=publishers.pub_id 
and type='business'
go

select MAX(price), MIN(pub_name)
from titles, publishers
where titles.pub_id=publishers.pub_id
go

select title, pub_name, advance 
from titles, publishers 
where publishers.pub_id = titles.pub_id and advance < $15000 
having pub_name='Algodata Infosystems'
go

select pub_name, date
from sales, salesdetail, titles, publishers
where sales.stor_id=salesdetail.stor_id
and salesdetail.title_id=titles.title_id
and titles.pub_id=publishers.pub_id
having date=max(date)
go
