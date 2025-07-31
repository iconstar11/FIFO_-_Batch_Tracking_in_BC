page 50153 "Batch Tester"
{
    PageType = Card;
    ApplicationArea = All;
    Caption = 'FIFO Batch Tester';

    layout
    {
        area(content)
        {
            group("Test Batch Consumption")
            {
                field(ItemNo; ItemNo)
                {
                    ApplicationArea = All;
                    Caption = 'Item No.';
                    TableRelation = Item."No.";
                }

                field(QuantityToConsume; QuantityToConsume)
                {
                    ApplicationArea = All;
                    Caption = 'Quantity to Consume';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ConsumeBatch)
            {
                Caption = 'Consume Oldest Batch';
                ApplicationArea = All;
                Image = Process;

                trigger OnAction()
                var
                    BatchConsumer: Codeunit "Batch Consumption Handler";
                begin
                    if ItemNo = '' then
                        Error('Please select an item.');

                    if QuantityToConsume <= 0 then
                        Error('Enter a valid quantity to consume.');

                    Message('Running FIFO consumption for item %1, quantity %2', ItemNo, QuantityToConsume);
                    BatchConsumer.ConsumeOldestBatch(ItemNo, QuantityToConsume);
                    Message('Done.');
                end;
            }
        }
    }

    var
        ItemNo: Code[20];
        QuantityToConsume: Decimal;
}
