indexing

	description: "PDF Catalog object. Root of document objects hierarchy. %
		% The catalog gathers the various components of the structure of a document.%
		% The most important (and mandatory) is the Page tree root.%
		% Other are : The outline hierarchy, article threads, named destinations and%
		% interactive forms.  They are not implemented in this version."
	author: "Paul G. Crismer"
	licence: "Release under the Eiffel Forum licence.  See file 'forum.txt'."

class
	PDF_CATALOG

inherit
	PDF_OBJECT

creation
	make

feature -- Initialization

feature -- Access

	pages : PDF_PAGES
			-- Root of page tree
			-- The pages of a document are accessed through a structure known as the page tree,
			-- which defines their ordering within the document. The tree structure allows PDF
			-- viewer applications to quickly open a document containing thousands of pages
			--- using only limited memory.
	
	outlines : PDF_OUTLINES
			-- PDF optional
	
	page_layout : PDF_NAME
			-- PDF optional

feature {PDF_DOCUMENT} -- Element change

	set_pages (a_pages : PDF_PAGES) is
			-- 
		require
			a_pages /= Void
		do
			pages := a_pages
		ensure
			pages = a_pages			
		end

	set_page_layout (p : PDF_NAME) is
			-- set page_layout
		do
			page_layout := p
		end
		
feature -- Conversion

	to_pdf : STRING is
			-- 
		local
			ntype, npages, nlayout : PDF_NAME
		do
			!!Result.make (0)
			!!ntype.make ("Type")
			!!npages.make ("Pages")
			!!nlayout.make ("PageLayout")
			Result.append (object_header)
			Result.append (begin_dictionary)
			Result.append (dictionary_entry (ntype, "/Catalog"))
			Result.append (dictionary_entry (npages, pages.indirect_reference))
			if page_layout /= Void and then not page_layout.value.is_empty then
				Result.append (dictionary_entry (nlayout, page_layout.to_pdf))
			end
			Result.append (end_dictionary)
			Result.append (object_footer)
		end
		
feature {NONE} -- Implementation

invariant
	invariant_clause: -- Your invariant here

end -- class PDF_CATALOG