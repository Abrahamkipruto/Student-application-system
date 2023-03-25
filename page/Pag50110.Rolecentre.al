page 50110 Rolecentre
{
    Caption = 'Rolecentre';
    PageType = RoleCenter;


    layout
    {
        area(RoleCenter)
        {
            group(General)
            {

                part(part1; "Headline RC Order Processor")
                {

                }

                part(part2; "Approvals Activities")
                {

                }
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Pages)
            {
                Caption = 'Student Management';
                Image = RegisteredDocs;


                group(Applicant)
                {
                    Caption = 'Applicant';

                    action(Student)
                    {
                        Caption = 'Student Application Card';
                        RunObject = page "Student Application";
                        ApplicationArea = all;
                    }
                    action(Course)
                    {
                        Caption = 'Unit Registration';
                        RunObject = page "Units Registration";
                    }
                    group("Student Approval Status")
                    {
                        action(Open)
                        {
                            ApplicationArea = ALL;
                            RunObject = PAGE "Open Student Application List";
                            Caption = ' Open Status';
                        }
                        action(Released)
                        {
                            ApplicationArea = all;
                            Caption = 'Released Status';
                            RunObject = Page "Releases Student Application ";

                        }
                    }
                }
                group("Admin list")

                {
                    Caption = 'Administration';
                    action(Students)
                    {
                        Caption = 'Student Application Lists';

                        ApplicationArea = all;
                        RunObject = page "studentApplication list";

                    }
                    // }
                    action("Admin Lists")
                    {
                        Caption = 'Students Registered';
                        RunObject = page "Admin lists";
                        ApplicationArea = all;
                    }
                    action(Active)
                    {
                        ApplicationArea = all;
                        Caption = 'Active Student';
                        RunObject = page "Active Student";

                    }
                    action(InActive)
                    {
                        ApplicationArea = all;
                        Caption = 'InActive Student';
                        RunObject = page "InActive Student";
                    }
                    // group("Student Approval Status")
                    // {
                    //     action(Open)
                    //     {
                    //         ApplicationArea = ALL;
                    //         RunObject = PAGE "Open Student Application List";
                    //         Caption = ' Open Status';
                    //     }
                    //     action(Released)
                    //     {
                    //         ApplicationArea = all;
                    //         Caption = 'Released Status';
                    //         RunObject = Page "studentApplication list";

                    //     }


                    action("Unit")
                    {
                        Caption = 'Units Registration Lists';
                        RunObject = page "Units Registration List";
                        ApplicationArea = all;
                    }




                }
                group(Setup)
                {
                    Caption = 'Setup';
                    action(Set)
                    {
                        Caption = 'Department Setup';
                        RunObject = page "Department Setup";
                        ApplicationArea = all;
                    }
                    action(Cours)
                    {
                        Caption = 'Courses Setup';
                        RunObject = page "Course lists";
                        ApplicationArea = all;
                    }
                    action(Units)
                    {
                        Caption = 'Unit Setup';
                        ApplicationArea = all;
                        RunObject = page "Units Setup Lists";
                    }
                }


            }
        }

        area(Embedding)
        {

            action(Page)
            {
                Caption = 'Top 10 students';
                RunObject = Page "studentApplication list";

                ApplicationArea = All;
            }
            action(STUD)
            {
                Caption = 'Top 10 Student';
                RunObject = page "studentApplication list";


            }
        }

        area(Processing)
        {
            action(SeeSalesInvoices)
            {
                Caption = 'See Sales Invoices';
                RunObject = Page "Posted Sales Invoices";

            }

        }

        area(Creation)
        {
            action(AddSalesInvoice)
            {
                Caption = 'Add Student';
                Image = NewInvoice;
                RunObject = Page Admin;
                RunPageMode = Create;
            }
            action(Adin)
            {
                ApplicationArea = All;
                Caption = 'Add  Course';
                RunObject = Page "Courses Setup";

                // trigger OnAction()
                // begin

                // end;
            }
            action("Add Unit")
            {
                ApplicationArea = all;
                Caption = 'Add Unit';
                RunObject = page "Units Setup";
            }

        }

        // area(Reporting)
        // {
        //     action(SalesInvoicesReport)
        //     {
        //         Caption = 'Sales Invoices Report';
        //         Image = "Report";
        //         RunObject = Report "sales -invoice";
        //     }
        // }
    }
}




profile myprofile
{
    ProfileDescription = 'sample profile';
    RoleCenter = Rolecentre;
    Caption = 'Student Management';
}



