import credits.leo;

program distrofund.aleo {
    struct Addresses1 {
        address1: address;
    }
    struct Addresses2 {
        address1: address;
        address2: address;
    }
    struct Addresses3 {
        address1: address;
        address2: address;
        address3: address;
    }
    struct Addresses4 {
        address1: address;
        address2: address;
        address3: address;
        address4: address;
    }
    struct Addresses5 {
        address1: address;
        address2: address;
        address3: address;
        address4: address;
        address5: address;
    }
    struct Addresses10 {
        address1: address;
        address2: address;
        address3: address;
        address4: address;
        address5: address;
        address6: address;
        address7: address;
        address8: address;
        address9: address;
        address10: address;
    }
    struct Amount1 {
        amount1: u64;
    }
    struct Amount2 {
        amount1: u64;
        amount2: u64;
    }
    struct Amount3 {
        amount1: u64;
        amount2: u64;
        amount3: u64;
    }
    struct Amount4 {
        amount1: u64;
        amount2: u64;
        amount3: u64;
        amount4: u64;
    }
    struct Amount5 {
        amount1: u64;
        amount2: u64;
        amount3: u64;
        amount4: u64;
        amount5: u64;
    }
    struct Amount10 {
        amount1: u64;
        amount2: u64;
        amount3: u64;
        amount4: u64;
        amount5: u64;
        amount6: u64;
        amount7: u64;
        amount8: u64;
        amount9: u64;
        amount10: u64;
    }

    transition transfer_one(sender_record: credits.leo/credits, public receiver_address: Addresses1, amount: Amount1) -> (credits.leo/credits, credits.leo/credits) {
        let (receiver_record, sender_leftover_record): (credits, credits) = credits.leo/transfer_private(sender_record, receiver_address.address1, amount.amount1);

        return (sender_leftover_record, receiver_record);
    }

    transition transfer_two(sender_record: credits.leo/credits, public receiver_address: Addresses2, amount: Amount2) -> (
            credits.leo/credits, 
            credits.leo/credits,
            credits.leo/credits
        ) {
        let (receiver_record, sender_leftover_record): (credits, credits) = credits.leo/transfer_private(sender_record, receiver_address.address1, amount.amount1);
        let (receiver_record1, sender_leftover_record1): (credits, credits) = credits.leo/transfer_private(sender_leftover_record, receiver_address.address2, amount.amount2);

        return (sender_leftover_record1, receiver_record, receiver_record1);
    }

    transition transfer_three(sender_record: credits.leo/credits, public receiver_address: Addresses3, amount: Amount3) -> (
            credits.leo/credits, 
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits
        ) {
        let (receiver_record, sender_leftover_record): (credits, credits) = credits.leo/transfer_private(sender_record, receiver_address.address1, amount.amount1);
        let (receiver_record1, sender_leftover_record1): (credits, credits) = credits.leo/transfer_private(sender_leftover_record, receiver_address.address2, amount.amount2);
        let (receiver_record2, sender_leftover_record2): (credits, credits) = credits.leo/transfer_private(sender_leftover_record1, receiver_address.address3, amount.amount3);

        return (sender_leftover_record2, receiver_record, receiver_record1, receiver_record2);
    }

    transition transfer_four(sender_record: credits.leo/credits, public receiver_address: Addresses4, amount: Amount4) -> (
            credits.leo/credits, 
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits
        ) {
        let (receiver_record, sender_leftover_record): (credits, credits) = credits.leo/transfer_private(sender_record, receiver_address.address1, amount.amount1);
        let (receiver_record1, sender_leftover_record1): (credits, credits) = credits.leo/transfer_private(sender_leftover_record, receiver_address.address2, amount.amount2);
        let (receiver_record2, sender_leftover_record2): (credits, credits) = credits.leo/transfer_private(sender_leftover_record1, receiver_address.address3, amount.amount3);
        let (receiver_record3, sender_leftover_record3): (credits, credits) = credits.leo/transfer_private(sender_leftover_record2, receiver_address.address4, amount.amount4);
        
        return (sender_leftover_record3, receiver_record, receiver_record1, receiver_record2, receiver_record3);
    }
    transition transfer_five(sender_record: credits.leo/credits, public receiver_address: Addresses5, amount: Amount5) -> (
            credits.leo/credits, 
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits
        ) {
        let (receiver_record, sender_leftover_record): (credits, credits) = credits.leo/transfer_private(sender_record, receiver_address.address1, amount.amount1);
        let (receiver_record1, sender_leftover_record1): (credits, credits) = credits.leo/transfer_private(sender_leftover_record, receiver_address.address2, amount.amount2);
        let (receiver_record2, sender_leftover_record2): (credits, credits) = credits.leo/transfer_private(sender_leftover_record1, receiver_address.address3, amount.amount3);
        let (receiver_record3, sender_leftover_record3): (credits, credits) = credits.leo/transfer_private(sender_leftover_record2, receiver_address.address4, amount.amount4);
        let (receiver_record4, sender_leftover_record4): (credits, credits) = credits.leo/transfer_private(sender_leftover_record3, receiver_address.address5, amount.amount5);
        
        return (sender_leftover_record4, receiver_record, receiver_record1, receiver_record2, receiver_record3, receiver_record4);
    }

    transition transfer_ten(sender_record: credits.leo/credits, public receiver_address: Addresses10, amount: Amount10) -> (
            credits.leo/credits, 
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits,
            credits.leo/credits
        ) {
        let (receiver_record, sender_leftover_record): (credits, credits) = credits.leo/transfer_private(sender_record, receiver_address.address1, amount.amount1);
        let (receiver_record1, sender_leftover_record1): (credits, credits) = credits.leo/transfer_private(sender_leftover_record, receiver_address.address2, amount.amount2);
        let (receiver_record2, sender_leftover_record2): (credits, credits) = credits.leo/transfer_private(sender_leftover_record1, receiver_address.address3, amount.amount3);
        let (receiver_record3, sender_leftover_record3): (credits, credits) = credits.leo/transfer_private(sender_leftover_record2, receiver_address.address4, amount.amount4);
        let (receiver_record4, sender_leftover_record4): (credits, credits) = credits.leo/transfer_private(sender_leftover_record3, receiver_address.address5, amount.amount5);
        let (receiver_record5, sender_leftover_record5): (credits, credits) = credits.leo/transfer_private(sender_leftover_record4, receiver_address.address6, amount.amount6);
        let (receiver_record6, sender_leftover_record6): (credits, credits) = credits.leo/transfer_private(sender_leftover_record5, receiver_address.address7, amount.amount7);
        let (receiver_record7, sender_leftover_record7): (credits, credits) = credits.leo/transfer_private(sender_leftover_record6, receiver_address.address8, amount.amount8);
        let (receiver_record8, sender_leftover_record8): (credits, credits) = credits.leo/transfer_private(sender_leftover_record7, receiver_address.address9, amount.amount9);
        let (receiver_record9, sender_leftover_record9): (credits, credits) = credits.leo/transfer_private(sender_leftover_record8, receiver_address.address10, amount.amount10);
        
        return (
            sender_leftover_record9, 
            receiver_record, 
            receiver_record1, 
            receiver_record2, 
            receiver_record3, 
            receiver_record4, 
            receiver_record5, 
            receiver_record6, 
            receiver_record7, 
            receiver_record8, 
            receiver_record9
        );
    }
}

// program distrofund.aleo {
//     struct Addresses {
//         address1: address,
//         address2: address,
//         address3: address,
//         address4: address,
//         address5: address,
//         address6: address,
//         address7: address,
//         address8: address,
//         address9: address,
//         address10: address,
//         address11: address,
//         address12: address,
//         address13: address,
//         address14: address,
//         address15: address
//     }
//     struct Amounts {
//         amount1: u64,
//         amount2: u64,
//         amount3: u64,
//         amount4: u64,
//         amount5: u64,
//         amount6: u64,
//         amount7: u64,
//         amount8: u64,
//         amount9: u64,
//         amount10: u64,
//         amount11: u64,
//         amount12: u64,
//         amount13: u64,
//         amount14: u64,
//         amount15: u64
//     }
//     transition main(sender: credits.leo/credits, public a: Addresses, b: Amounts) -> (
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record,
//             credits.leo/credits.record        
//         ) {
//         let (receiver1, sender1): (credits, credits) = credits.leo/transfer_private(sender, a.address1, b.amount1);
//         let (receiver2, sender2): (credits, credits) = credits.leo/transfer_private(sender1, a.address2, b.amount2);
//         let (receiver3, sender3): (credits, credits) = credits.leo/transfer_private(sender2, a.address3, b.amount3);
//         let (receiver4, sender4): (credits, credits) = credits.leo/transfer_private(sender3, a.address4, b.amount4);
//         let (receiver5, sender5): (credits, credits) = credits.leo/transfer_private(sender4, a.address5, b.amount5);
//         let (receiver6, sender6): (credits, credits) = credits.leo/transfer_private(sender5, a.address6, b.amount6);
//         let (receiver7, sender7): (credits, credits) = credits.leo/transfer_private(sender6, a.address7, b.amount7);
//         let (receiver8, sender8): (credits, credits) = credits.leo/transfer_private(sender7, a.address8, b.amount8);
//         let (receiver9, sender9): (credits, credits) = credits.leo/transfer_private(sender8, a.address9, b.amount9);
//         let (receiver10, sender10): (credits, credits) = credits.leo/transfer_private(sender9, a.address10, b.amount10);
//         let (receiver11, sender11): (credits, credits) = credits.leo/transfer_private(sender10, a.address11, b.amount11);
//         let (receiver12, sender12): (credits, credits) = credits.leo/transfer_private(sender11, a.address12, b.amount12);
//         let (receiver13, sender13): (credits, credits) = credits.leo/transfer_private(sender12, a.address13, b.amount13);
//         let (receiver14, sender14): (credits, credits) = credits.leo/transfer_private(sender13, a.address14, b.amount14);
//         let (receiver15, sender15): (credits, credits) = credits.leo/transfer_private(sender14, a.address15, b.amount15);


//         return (sender15, receiver1, receiver2, receiver3, receiver4, receiver5, receiver6, receiver7, receiver8, receiver9, receiver10, receiver11, receiver12, receiver13, receiver14, receiver15);
//     }
// }
