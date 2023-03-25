tableextension 50100 "JobExt" extends Job
{
    fields
    {
        field(50100; "Approval status"; Option)
        {
            Caption = 'Approval Status';
            DataClassification = ToBeClassified;
            OptionMembers= Open,"PA",Released;
            OptionCaption='Open,Pending Approval,Released';

        }
        field(50101; "Academic Year"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Academic Year';
        }
    }
}
