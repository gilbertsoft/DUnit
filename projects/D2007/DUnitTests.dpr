{#(@)$Id: $ }
{  DUnit: An XTreme testing framework for Delphi programs. }
(*
 * The contents of this file are subject to the Mozilla Public
 * License Version 1.1 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of
 * the License at http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS
 * IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * rights and limitations under the License.
 *
 * The Original Code is DUnit.
 *
 * The Initial Developers of the Original Code are Kent Beck, Erich Gamma,
 * and Juancarlo A�ez.
 * Portions created The Initial Developers are Copyright (C) 1999-2000.
 * Portions created by The DUnit Group are Copyright (C) 2000-2008.
 * All rights reserved.
 *
 * Contributor(s):
 * Kent Beck <kentbeck@csi.com>
 * Erich Gamma <Erich_Gamma@oti.com>
 * Juanco A�ez <juanco@users.sourceforge.net>
 * Chris Morris <chrismo@users.sourceforge.net>
 * Jeff Moore <JeffMoore@users.sourceforge.net>
 * Uberto Barbini <uberto@usa.net>
 * Brett Shearer <BrettShearer@users.sourceforge.net>
 * Kris Golko <neuromancer@users.sourceforge.net>
 * The DUnit group at SourceForge <http://dunit.sourceforge.net>
 * Peter McNab <mcnabp@qmail.com>
 *
 *******************************************************************************
*)
program DUnitTests;
{
  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.
}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TestFramework in '..\..\src\TestFramework.pas',
  GUITestRunner in '..\..\src\GUITestRunner.pas',
  TextTestRunner in '..\..\src\TextTestRunner.pas',
  UnitTestGUITestRunner in '..\..\tests\UnitTestGUITestRunner.pas',
  FastMMMonitorTest in '..\..\tests\FastMMMonitorTest.pas',
  UnitTestExtensions in '..\..\tests\UnitTestExtensions.pas',
  UnitTestFramework in '..\..\tests\UnitTestFramework.pas',
  UnitTestGUITesting in '..\..\tests\UnitTestGUITesting.pas' {TestForm};

{$R *.RES}

begin
  if IsConsole then
  begin
    TextTestRunner.RunRegisteredTests;
    writeln;
    writeln('Press <ENTER> to continue');
    readln;
  end
  else
    GUITestRunner.RunRegisteredTests;
end.