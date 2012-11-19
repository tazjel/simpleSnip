" C# Snippets for the simpleSnip.vim plugin

" USing
iabb <buffer> US using System;<esc>b
iabb <buffer> USD using System.Data;<esc>b
iabb <buffer> USI using System.IO;<esc>b
iabb <buffer> UST using System.Threading;<esc>b

" MAin
iabb <buffer> MA 
\class aaProgram<cr>
\{<cr>
\static void Main()<cr>
\{<cr>
\aaCode<cr>
\}<cr>
\}
\<esc>:cal S(2)<cr>

" CLass
iabb <buffer> CL 
\aaVisibility class aaClassName<cr>
\{<cr>
\public aaClassName(aaParamType aaParamName)<cr>
\{<cr>
\aaConstructorCode<cr>
\}<cr>
\}
\<esc>:cal S(6)<cr>

" COnstructor
iabb <buffer> CO 
\public aaConstructor(aaParamType aaParamName)<cr>
\: aaBaseOrThis(aaParamNameNoType)<cr>
\{<cr>
\aaCode<cr>
\}<cr>
\<esc>:cal S(6)<cr>

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

" MEthod
iabb <buffer> ME 
\aaMethodVisibility aaMethodType aaMethodName(aaParamType aaParamName)<cr>
\{<cr>
\aaCode<cr>
\}<cr>
\<esc>:cal S(6)<cr>

" WriteLine
iabb <buffer> WL Console.WriteLine("");<esc>3h

" ReadKey
iabb <buffer> RK Console.ReadKey();<esc>

" Throw Exception 
iabb <buffer> TE throw new Exception("");<esc>3h

" IF 
iabb <buffer> IF 
\if (aaCondition)<cr>
\{<cr>
\aaCode<cr>
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

" FOr
iabb <buffer> FO 
\for (int aaVar = 0; aaVar < aaMax; aaVar++)<cr>
\{<cr>
\aaCode<cr>
\}
\<esc>:cal S(5)<cr>

" ForEach
iabb <buffer> FE 
\foreach (aaType aaItem in aaItems)<cr>
\{<cr>
\aaCode<cr>
\}
\<esc>:cal S(4)<cr>

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

" Create and Write to a text File 
iabb <buffer> FW 
\StreamWriter sw = new StreamWriter("aaFileName");<cr>
\sw.WriteLine("aaTextToWriteToFile");<cr>
\sw.Close();
\<esc>:cal S(2)<cr>

" Read and display a text file 
iabb <buffer> FR 
\StreamReader sr = new StreamReader("aaFileName");<cr>
\Console.WriteLine(sr.ReadToEnd());<cr>
\sr.Close();
\<esc>2kf"l

" DElegate
iabb <buffer> DE 
\aaVisibility delegate aaType aaDelegateName(aaParamType aaParamName); 
\<esc>:cal S(5)<cr>

iabb <buffer> DE1 
\aaVisibility delegate void aaDelegateName(object sender, EventArgs e); 
\<esc>:cal S(2)<cr>

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
