import credits.aleo;
program distrofund.aleo;


struct Addresses1:
    address1 as address;

struct Addresses2:
    address1 as address;
    address2 as address;

struct Addresses3:
    address1 as address;
    address2 as address;
    address3 as address;

struct Addresses4:
    address1 as address;
    address2 as address;
    address3 as address;
    address4 as address;

struct Addresses5:
    address1 as address;
    address2 as address;
    address3 as address;
    address4 as address;
    address5 as address;

struct Addresses10:
    address1 as address;
    address2 as address;
    address3 as address;
    address4 as address;
    address5 as address;
    address6 as address;
    address7 as address;
    address8 as address;
    address9 as address;
    address10 as address;

struct Amount1:
    amount1 as u64;

struct Amount2:
    amount1 as u64;
    amount2 as u64;

struct Amount3:
    amount1 as u64;
    amount2 as u64;
    amount3 as u64;

struct Amount4:
    amount1 as u64;
    amount2 as u64;
    amount3 as u64;
    amount4 as u64;

struct Amount5:
    amount1 as u64;
    amount2 as u64;
    amount3 as u64;
    amount4 as u64;
    amount5 as u64;

struct Amount10:
    amount1 as u64;
    amount2 as u64;
    amount3 as u64;
    amount4 as u64;
    amount5 as u64;
    amount6 as u64;
    amount7 as u64;
    amount8 as u64;
    amount9 as u64;
    amount10 as u64;


function transfer_one:
    input r0 as credits.aleo/credits.record;
    input r1 as Addresses1.public;
    input r2 as Amount1.private;
    call credits.aleo/transfer_private r0 r1.address1 r2.amount1 into r3 r4;
    output r4 as credits.aleo/credits.record;
    output r3 as credits.aleo/credits.record;


function transfer_two:
    input r0 as credits.aleo/credits.record;
    input r1 as Addresses2.public;
    input r2 as Amount2.private;
    call credits.aleo/transfer_private r0 r1.address1 r2.amount1 into r3 r4;
    call credits.aleo/transfer_private r4 r1.address2 r2.amount2 into r5 r6;
    output r6 as credits.aleo/credits.record;
    output r3 as credits.aleo/credits.record;
    output r5 as credits.aleo/credits.record;


function transfer_three:
    input r0 as credits.aleo/credits.record;
    input r1 as Addresses3.public;
    input r2 as Amount3.private;
    call credits.aleo/transfer_private r0 r1.address1 r2.amount1 into r3 r4;
    call credits.aleo/transfer_private r4 r1.address2 r2.amount2 into r5 r6;
    call credits.aleo/transfer_private r6 r1.address3 r2.amount3 into r7 r8;
    output r8 as credits.aleo/credits.record;
    output r3 as credits.aleo/credits.record;
    output r5 as credits.aleo/credits.record;
    output r7 as credits.aleo/credits.record;


function transfer_four:
    input r0 as credits.aleo/credits.record;
    input r1 as Addresses4.public;
    input r2 as Amount4.private;
    call credits.aleo/transfer_private r0 r1.address1 r2.amount1 into r3 r4;
    call credits.aleo/transfer_private r4 r1.address2 r2.amount2 into r5 r6;
    call credits.aleo/transfer_private r6 r1.address3 r2.amount3 into r7 r8;
    call credits.aleo/transfer_private r8 r1.address4 r2.amount4 into r9 r10;
    output r10 as credits.aleo/credits.record;
    output r3 as credits.aleo/credits.record;
    output r5 as credits.aleo/credits.record;
    output r7 as credits.aleo/credits.record;
    output r9 as credits.aleo/credits.record;


function transfer_five:
    input r0 as credits.aleo/credits.record;
    input r1 as Addresses5.public;
    input r2 as Amount5.private;
    call credits.aleo/transfer_private r0 r1.address1 r2.amount1 into r3 r4;
    call credits.aleo/transfer_private r4 r1.address2 r2.amount2 into r5 r6;
    call credits.aleo/transfer_private r6 r1.address3 r2.amount3 into r7 r8;
    call credits.aleo/transfer_private r8 r1.address4 r2.amount4 into r9 r10;
    call credits.aleo/transfer_private r10 r1.address5 r2.amount5 into r11 r12;
    output r12 as credits.aleo/credits.record;
    output r3 as credits.aleo/credits.record;
    output r5 as credits.aleo/credits.record;
    output r7 as credits.aleo/credits.record;
    output r9 as credits.aleo/credits.record;
    output r11 as credits.aleo/credits.record;


function transfer_ten:
    input r0 as credits.aleo/credits.record;
    input r1 as Addresses10.public;
    input r2 as Amount10.private;
    call credits.aleo/transfer_private r0 r1.address1 r2.amount1 into r3 r4;
    call credits.aleo/transfer_private r4 r1.address2 r2.amount2 into r5 r6;
    call credits.aleo/transfer_private r6 r1.address3 r2.amount3 into r7 r8;
    call credits.aleo/transfer_private r8 r1.address4 r2.amount4 into r9 r10;
    call credits.aleo/transfer_private r10 r1.address5 r2.amount5 into r11 r12;
    call credits.aleo/transfer_private r12 r1.address6 r2.amount6 into r13 r14;
    call credits.aleo/transfer_private r14 r1.address7 r2.amount7 into r15 r16;
    call credits.aleo/transfer_private r16 r1.address8 r2.amount8 into r17 r18;
    call credits.aleo/transfer_private r18 r1.address9 r2.amount9 into r19 r20;
    call credits.aleo/transfer_private r20 r1.address10 r2.amount10 into r21 r22;
    output r22 as credits.aleo/credits.record;
    output r3 as credits.aleo/credits.record;
    output r5 as credits.aleo/credits.record;
    output r7 as credits.aleo/credits.record;
    output r9 as credits.aleo/credits.record;
    output r11 as credits.aleo/credits.record;
    output r13 as credits.aleo/credits.record;
    output r15 as credits.aleo/credits.record;
    output r17 as credits.aleo/credits.record;
    output r19 as credits.aleo/credits.record;
    output r21 as credits.aleo/credits.record;
