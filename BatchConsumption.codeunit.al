codeunit 50151
 "Batch Consumption Handler"
{
    Subtype = Normal;

    procedure ConsumeOldestBatch(ItemNo: Code[20]; QuantityToConsume: Decimal)
    var
        Batch: Record "Item Batch Ledger";
        RemainingQty: Decimal;
    begin
        // Find the oldest batch with remaining quantity
        if Batch.FindSet(true) then
            repeat
                if (Batch."Item No." = ItemNo) and (Batch."Remaining Quantity" > 0) then begin
                    RemainingQty := Batch."Remaining Quantity";

                    if RemainingQty >= QuantityToConsume then begin
                        Batch."Used Quantity" += QuantityToConsume;
                        Batch.Modify();
                        exit; // Done consuming
                    end else begin
                        // Consume what we can from this batch and continue
                        Batch."Used Quantity" += RemainingQty;
                        QuantityToConsume -= RemainingQty;
                        Batch.Modify();
                    end;
                end;
            until Batch.Next() = 0;
    end;
}
