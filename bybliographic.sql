-- format a query as a Bybliographic database

SELECT '@Book{' as 'Book',

concat(left(`Author`,3),`Year`,',') as 'slug',
concat('Author={{' , `Author`, '}},') as 'Author',
concat('Title={{' ,`Title`, '}},') as 'Title',
concat('Year=',`Year`,'}')

FROM `libri`
