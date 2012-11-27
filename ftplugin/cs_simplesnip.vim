" C# Snippets for the simpleSnip.vim plugin

" Using
    " USing
        iabb <buffer> US using System;<esc>b
        iabb <buffer> USD using System.Data;<esc>b
        iabb <buffer> USDS using System.Data.SqlClient;<esc>b
        iabb <buffer> USI using System.IO;<esc>b
        iabb <buffer> UST using System.Threading;<esc>b

" Class
    " MAin
        iabb <buffer> MA 
        \class aaProgram<cr>
        \{<cr>
        \static void Main()<cr>
        \{<cr>
        \aaStateVar<cr>
        \}<cr>
        \}
        \<esc>:cal S(2)<cr>
    " CLass
        iabb <buffer> CL 
        \<c-o>:set paste<cr>
        \aaVisibility class aaClassName<cr>
        \{<cr>
        \   public aaClassName(aaParamType aaParamName)<cr>
        \   {<cr>
        \       aaStateVar<cr>
        \   }<cr>
        \}
        \<esc>:cal S(6)<cr>
    " COnstructor
        iabb <buffer> CO 
        \public aaConstructor(aaParamType aaParamName)<cr>
        \: aaBaseOrThis(aaParamName)<cr>
        \{<cr>
        \aaStateVar<cr>
        \}<cr>
        \<esc>:cal S(6)<cr>

" Properties
    " Automatic Property
        iabb <buffer> AP 
        \public aaType aaName { get; set; }
        \<esc>:cal S(2)<cr>
    " PRoperty
        iabb <buffer> PR 
        \public aaType aaName<cr>
        \{<cr>
        \get<cr>
        \{<cr>
        \return aaGet;<cr>
        \}<cr>
        \set<cr>
        \{<cr>
        \set aaSet = value;<cr>
        \}<cr>
        \}<cr>
        \<esc>:cal S(4)<cr>

" Methods/Functions
    " MEthod
        iabb <buffer> ME 
        \aaMethodVisibility aaMethodType aaMethodName(aaParamType aaParamName)<cr>
        \{<cr>
        \aaStateVar<cr>
        \}<cr>
        \<esc>:cal S(6)<cr>

" Conditions
    " IF 
        iabb <buffer> IF 
        \if (aaCondition)<cr>
        \{<cr>
        \aaStateVar<cr>
        \}
        \<esc>:cal S(2)<cr>
    " If/Else
        iabb <buffer> IE 
        \if (aaCondition)<cr>
        \{<cr>
        \aaIfCode<cr>
        \}<cr>
        \else<cr>
        \{<cr>
        \aaElseCode<cr>
        \}
        \<esc>:cal S(3)<cr>
    " If/Else If
        iabb <buffer> IEI 
        \if (aaIfCondition)<cr>
        \{<cr>
        \}<cr>
        \else if (aaElseIfCondition)<cr>
        \{<cr>
        \}
        \<esc>:cal S(2)<cr>
    " If/Else If/Else
        iabb <buffer> IEIE 
        \if (aaIfCondition)<cr>
        \{<cr>
        \aaIfCode<cr>
        \}<cr>
        \else if (aaElseIfCondition)<cr>
        \{<cr>
        \aaElseIfCode<cr>
        \}<cr>
        \else<cr>
        \{<cr>
        \aaElseCode<cr>
        \}
        \<esc>:cal S(5)<cr>
    " SWitch
        iabb <buffer> SW 
        \switch (aaSwitch)<cr>
        \{<cr>
        \case: aaCase1<cr>
        \aaCase1Code;<cr>
        \break;<cr>
        \case: aaCase2<cr>
        \aaCase2Code;<cr>
        \break;<cr>
        \default:<cr>
        \aaDefaultCode;<cr>
        \break;<cr>
        \}
        \<esc>:cal S(5)<cr>

" Loop
    " FOr
        iabb <buffer> FO 
        \for (int aaVar = 0; aaVar < aaMax; aaVar++)<cr>
        \{<cr>
        \aaStateVar<cr>
        \}
        \<esc>:cal S(5)<cr>
    " ForEach
        iabb <buffer> FE 
        \foreach (aaType aaItem in aaItems)<cr>
        \{<cr>
        \aaStateVar<cr>
        \}
        \<esc>:cal S(4)<cr>
    " WHile
        iabb <buffer> WH 
        \while(aaCondition)<cr>
        \{<cr>
        \aaStateVar<cr>
        \}
        \<esc>:cal S(2)<cr>

" Exception Handling
    " Throw Exception 
        iabb <buffer> TE throw new Exception("");<esc>3h
    " Try/Catch
        iabb <buffer> TC 
        \try<cr>
        \{<cr>
        \aaTryCode<cr>
        \}<cr>
        \catch (aaException aaex)<cr>
        \{<cr>
        \aaCatchCode<cr>
        \}
        \<esc>:cal S(2)<cr>
    " Try/Catch/Finally
        iabb <buffer> TCF 
        \try<cr>
        \{<cr>
        \aaTryCode<cr>
        \}<cr>
        \catch (aaException aaex)<cr>
        \{<cr>
        \aaCatchCode<cr>
        \}<cr>
        \finally<cr>
        \{<cr>
        \aaFinallyCode<cr>
        \}
        \<esc>:cal S(5)<cr>

" Console I/O
    " WriteLine
        iabb <buffer> WL Console.WriteLine("");<esc>3h
    " ReadKey
        iabb <buffer> RL Console.ReadLine();<esc>
    " ReadKey
        iabb <buffer> RK Console.ReadKey();<esc>

" File I/O
    " Create and Write to a text File 
        iabb <buffer> FW 
        \StreamWriter sw = new StreamWriter("aaFileName");<cr>
        \sw.WriteLine("aaTextToWriteToFile");<cr>
        \sw.Close();
        \<esc>:cal e(2)<cr>
    " Read and display a text file 
        iabb <buffer> FR 
        \StreamReader sr = new StreamReader("aaFileName");<cr>
        \Console.WriteLine(sr.ReadToEnd());<cr>
        \sr.Close();
        \<esc>2kf"l

" Delegates
    " DElegate
        iabb <buffer> DE 
        \aaVisibility delegate aaType aaDelegateName(aaParamType >); 
        \<esc>:cal S(5)<cr>
    " DElegate1
        iabb <buffer> DE1 
        \aaVisibility delegate void aaDelegateName(object sender, EventArgs e); 
        \<esc>:cal S(2)<cr>

" Events
    " EVent
        iabb <buffer> EV 
        \public delegate void MyEventHandler(object sender, EventArgs e); // Code common to both classes<cr>
        \public event MyEventHandler Clicked; // Code in button class<cr>
        \Clicked(this, new EventArgs()); // Code in button class, in click method<cr>
        \private void Update(object sender, EventArgs e) // Code in list class, method<cr>
        \{<cr>
        \}<cr>
        \button.Clicked += new MyEventHandler(list.Update); // Code in list class or other class to update the list on button click, like if the updatelist code was call when the button is clicked
        \<esc>

" Data Access
    " CoNnection
        iabb <buffer> CN 
        \using(SqlConnection aaConnectionName = new SqlConnection())<cr>
        \{<cr> 
        \aaConnectionName.ConnectionString = @"Data Source=(local)\SQLEXPRESS;Initial Catalog=aaDatabase;user=aaUser;password=aaPassword;";<cr>
        \aaConnectionName.Open();<cr>
        \}
        \<esc>:cal S(6)<cr>
    " CoMmand
        iabb <buffer> CM 
        \string aaSqlStringName = "aaSqlString";<cr>
        \SqlCommand aaCommandName = new SqlCommand(aaSqlStringName, aaConnectionName); 
        \<esc>:cal S(5)<cr>
    " DataReader
        iabb <buffer> DR 
        \using(SqlDataReader aaDataReaderName = aaCommandName.ExecuteReader())<cr>
        \{<cr>
        \aaStateVar<cr>
        \}
        \<esc>:cal S(3)<cr>
    " DataAdapter
        iabb <buffer> DA 
        \SqlDataAdapter zzDataAdapterName = new SqlDataAdapter(zzSqlString, zzConnectionName);<cr>
        \//SqlCommandBuilder zzCommandBuilderName = new SqlCommandBuilder(zzDataAdapterName);
        \<esc>:cal S1(5, "zz")<cr>
    " DataSet
        iabb <buffer> DS 
        \DataSet zzDataSetName = new DataSet("zzDataSetName");<cr>
        \zzDataAdapterName.Fill(zzDataSetName, "zzDataTableName");<cr>
        \//zzDataSetName.Load(zzDataReaderName);
        \<esc>:cal S1(7, "zz")<cr>
    " Loop
        " DataSetForEach
            iabb <buffer> DSFE 
            \foreach (DataRow zzDataRowName in zzDataSetName.Tables["zzDataTableName"].Rows)<cr>
            \{<cr>
            \foreach (DataColumn zzDataColumnName in zzDataSetName.Tables["zzDataTableName"].Columns)<cr>
            \{<cr>
            \Console.Write(zzDataRowName[zzDataColumnName.ToString()].ToString() + "\t");<cr>
            \}<cr>
            \Console.WriteLine();<cr>
            \}
            \<esc>:cal S1(8, "zz")<cr>

        " DataReaderWHile
            iabb <buffer> DRWH 
            \while (aaDataReaderName.Read())<cr>
            \{<cr>
            \Console.WriteLine(aaDataReaderName["aaFieldName"].ToString());<cr>
            \for (int i = 0; i < aaDataReaderName.FieldCount; i++)<cr>
            \{<cr>
            \Console.WriteLine("{0} = {1} ", aaDataReaderName.GetName(i), aaDataReaderName.GetValue(i).ToString());<cr>
            \}<cr>
            \}
            \<esc>:cal S(6)<cr>

" Multithreading
    " ThreadSleep
        iabb <buffer> TS 
        \Thread.Sleep(aaMilliseconds); 
        \<esc>:cal S(1)<cr>
    " ThreadPool
        iabb <buffer> TP 
        \aaStateType aaState = aaStateValue;<cr>
        \ThreadPool.QueueUserWorkItem(aaThreadProcedure, aaState);<cr>
        \// Long/blocking processing here...<cr>
        \// Procedure to copy out of this block<cr>
        \aaVisibility void aaThreadProcedure(Object aaStateParam)<cr>
        \{<cr>
        \aaStateType aaState = (aaStateType)aaStateParam;<cr>
        \aaCode<cr>
        \}
        \<esc>:cal S(13)<cr>
