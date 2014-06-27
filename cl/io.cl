(with-open-file (my-stream
                  "testfile.txt"
                  :direction :output
                  :if-exists :supersede)
  (princ "hello file!" my-stream))
