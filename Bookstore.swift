//
//  Bookstore.swift
//  Master-Detail
//
//  Created by user187992 on 3/5/21.
//

import Foundation

class Bookstore {
    var bookList: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.seriesNum = 1
        newBook.title = "A Game of Thrones"
        newBook.author = "George R. R. Martin"
        newBook.description = """
        The first volume in Martin's first fantasy saga, A Song of Ice and Fire, combines intrigue, action, romance, and mystery in a family saga. The family is the Starks of Winterfell, a society in crisis due to climatic change that has created decades-long seasons, and a society almost without magic but with human perversity abundant and active.
        """
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.seriesNum = 2
        newBook.title = "A Clash of Kings"
        newBook.author = "George R. R. Martin"
        newBook.description = """
        A Clash of Kings is the second novel in A Song of Ice and Fire, an epic fantasy series by American author George R. R. Martin expected to consist of seven volumes. It was first published on 16 November 1998 in the United Kingdom, although the first United States edition did not follow until February 2, 1999 Like its predecessor, A Game of Thrones, it won the Locus Award for Best Novel and was nominated for the Nebula Award for best novel. In May 2005 Meisha Merlin released a limited edition of the novel, fully illustrated by John Howe. The novel has been adapted for television by HBO as the second season of the TV series Game of Thrones. A Clash of Kings is also the name of the first expansion to the Game of Thrones board game.
        """
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.seriesNum = 3
        newBook.title = "A Storm of Swords"
        newBook.author = "George R. R. Martin"
            newBook.description = """
        Here is the third volume in George R. R. Martin’s magnificent cycle of novels that includes A Game of Thrones and A Clash of Kings. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.
        """
    
        bookList.append(newBook)
        
        
        newBook = Book()
        newBook.seriesNum = 5
        newBook.title = "A Dance with Dragons"
        newBook.author = "George R. R. Martin"
            newBook.description = """
        In the aftermath of a colossal battle, the future of the Seven Kingdoms hangs in the balance—beset by newly emerging threats from every direction. In the east, Daenerys Targaryen, the last scion of House Targaryen, rules with her three dragons as queen of a city built on dust and death. But Daenerys has thousands of enemies, and many have set out to find her. As they gather, one young man embarks upon his own quest for the queen, with an entirely different goal in mind.
        """
    
        bookList.append(newBook)
        
        newBook = Book()
        newBook.seriesNum = 4
        newBook.title = "A Feast for Crows"
        newBook.author = "George R. R. Martin"
            newBook.description = """
        Few books have captivated the imagination and won the devotion and praise of readers and critics everywhere as has George R. R. Martin’s monumental epic cycle of high fantasy that began with A Game of Thrones. Now, in A Feast for Crows, Martin delivers the long-awaited fourth book of his landmark series, as a kingdom torn asunder finds itself at last on the brink of peace . . . only to be launched on an even more terrifying course of destruction.
        """
    
        bookList.append(newBook)
        
        bookList.sort{$0.seriesNum < $1.seriesNum}
    }
}
