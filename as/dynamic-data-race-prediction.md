# as::dynamic-data-race-prediction

## when does a data race occur?

- if two conflicting event appear right next to each other in the trace (means both events happen at the same time)

## valid trace reordering

- program order must be maintained: The releative order of events for specific thread in P and P’ must remain the same
- lock semantic must be maintained: there must be a rel() between two acq()
- last writer must be maintained: Let r(x) be a read event in P’. Then, r(x) must have the same last writer in P’ as in P.

## complete

means that all valid reorderings that exhibit some race can be predicted. If incomplete, we refer to any not reported race as a false negative.

## sound

- means that races reported can be observed via some appropriate reordering of the trace. If unsound, we refer to wrongly a classified race as a false positive.
- if a dynamic data race prediction method is sound, then any race it detects is a real race that could happen in some execution of the program.

## happens-before

- incomplete: it might not identify all possible races

## lockset

- unsound: it
