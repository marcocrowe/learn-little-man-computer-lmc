//This solution also caters for the fact that 0! = 1. This is the purpose of line 3, 34,35 and 36.

          inp 
          sta final 
          brz oneval
          sub one
          sta iteration
          sta counter
          lda final
          sta num
mult      lda iteration
          brz end
          sub one
          brz end
          lda final
          add num
          sta final
          lda counter
          sub one
          sta counter
          sub one
          brz next
          bra mult
next      lda final
          sta num 
          lda iteration
          sub one
          sta iteration
          sta counter
          sub one
          brz end
          bra mult
end       lda final
          out
          hlt
oneval    lda one
          out
          hlt
final     dat 0
counter   dat 0
one       dat 1
iteration dat 0
num       dat 0
