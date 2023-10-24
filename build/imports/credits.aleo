program credits.aleo;

record credits:
    owner as address.private;
    microcredits as u64.private;


function transfer_private:
    input r0 as credits.record;
    input r1 as address.private;
    input r2 as u64.private;
    sub r0.microcredits r2 into r3;
    cast r0.owner r3 into r4 as credits.record;
    cast r1 r2 into r5 as credits.record;
    output r4 as credits.record;
    output r5 as credits.record;
