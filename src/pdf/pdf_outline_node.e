indexing
	description: "Objects that are outline nodes"
	author: "Paul G. Crismer"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PDF_OUTLINE_NODE

inherit
	PDF_OBJECT
		undefine
			put_pdf
		redefine
			to_pdf
		end
		
feature -- Access

	parent : PDF_OUTLINE_NODE
			-- parent node
	
	node_anchor : PDF_OUTLINE_NODE is
		deferred
		end
		
feature -- Measurement

	recursive_open_count : INTEGER is
			-- count of open elements
		local
			cursor : like new_cursor
		do
			if list.is_empty and then is_open then
				Result := 1
			else
				from
					cursor := new_cursor
					cursor.start
				until
					cursor.off
				loop
					Result := Result + cursor.item.recursive_open_count.abs
					cursor.forth
				end
				if not is_open then
					Result := -Result
				end
			end
		end
		
feature -- Status report

	is_open : BOOLEAN
			-- should this node be "open" when the parent is open ?
		
	has (node : like node_anchor) : BOOLEAN is
			-- is `node' a child of Current ?
		require
			node_exits: node /= Void
		do
			Result := list.has (node)
		end
		
feature -- Status setting

	set_open is
			-- this node should be open when parent is open
		do
			is_open := True
		ensure
			open: is_open
		end

	set_closed is
			-- this node should be closed when parent is open
		do
			is_open := False
		ensure
			closed: not is_open
		end
		
feature -- Cursor movement

	new_cursor : DS_BILINKED_LIST_CURSOR[like node_anchor] is
			-- 
		do
			Result := list.new_cursor
		end
		
	
feature -- Element change

	put_last (node : like node_anchor) is
			-- put `node' as last item
		require
			node_exists: node /= Void
			node_without_parent: node.parent = Void
		do
			list.put_last (node)
			node.set_parent (Current)
		ensure
			inserted: has (node)
			parented: node.parent = Current
		end

	put_first (node : like node_anchor) is
			-- put `node' as first item
		require
			node_exists: node /= Void
			node_without_parent: node.parent = Void
		do
			list.put_first (node)
			node.set_parent (Current)
		ensure
			inserted: has (node)
			parented: node.parent = Current
		end
		
	delete (node : like node_anchor) is
			-- delete `node' child from Current
		require
			node_exists: node /= Void
			has_node: has (node)
		do
			list.delete (node)
			node.set_parent (Void)
		ensure
			deleted: not has (node)
			no_parent: node.parent = Void
		end
		
feature {PDF_OUTLINE_NODE} -- Element change

	set_parent (node : like parent) is
			-- set `node' as parent
		do
			parent := node
		ensure
			parent_set: parent = node
		end

feature -- Removal

feature -- Resizing

feature -- Transformation

feature -- Conversion

	to_pdf : STRING is
			-- 
		local
			buffer : KL_STRING_OUTPUT_STREAM
			medium : PDF_OUTPUT_MEDIUM
		do
			create Result.make (25)
			create buffer.make (Result)
			create medium.make (buffer)
			put_pdf (medium)
			Result := buffer.string
		end
		
feature -- Duplication

feature -- Miscellaneous

feature -- Basic operations

feature -- Obsolete

feature -- Inapplicable

feature {NONE} -- Implementation

	list : DS_BILINKED_LIST[like node_anchor]
	
invariant
	list_exists: list /= Void

end -- class PDF_OUTLINE_NODE