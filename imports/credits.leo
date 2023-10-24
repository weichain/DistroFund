program credits.aleo {
    record credits {
        owner: address,
        microcredits: u64,
    }
    transition transfer_private(sender: credits, receiver: address, amount: u64) -> (credits, credits) {
        let difference: u64 = sender.microcredits - amount;

        // Produce a token record with the change amount for the sender.
        let remaining: credits = credits {
            owner: sender.owner,
            microcredits: difference,
        };

        // Produce a token record for the specified receiver.
        let transferred: credits = credits {
            owner: receiver,
            microcredits: amount,
        };

        // Output the sender's change record and the receiver's record.
        return (remaining, transferred);
    }
}