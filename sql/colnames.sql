-- note, this function is not strict; it's legal to pass in a null record of a
-- named composite type.

-- warning, the indexes of the resulting array do NOT correspond to attnum, since
-- dropped columns are not returned. The resulting array DOES correspond to the
-- order of fields that would be returned by, say, select (rec).*

CREATE FUNCTION colnames(record) RETURNS name[] LANGUAGE 'C' STABLE
AS '$libdir/colnames','record_colnames';