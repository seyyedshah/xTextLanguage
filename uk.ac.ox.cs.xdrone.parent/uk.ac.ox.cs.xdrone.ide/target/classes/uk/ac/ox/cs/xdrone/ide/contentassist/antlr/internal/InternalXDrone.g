/*
 * generated by Xtext 2.10.0
 */
grammar InternalXDrone;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package uk.ac.ox.cs.xdrone.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package uk.ac.ox.cs.xdrone.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import uk.ac.ox.cs.xdrone.services.XDroneGrammarAccess;

}
@parser::members {
	private XDroneGrammarAccess grammarAccess;

	public void setGrammarAccess(XDroneGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleProgram
entryRuleProgram
:
{ before(grammarAccess.getProgramRule()); }
	 ruleProgram
{ after(grammarAccess.getProgramRule()); } 
	 EOF 
;

// Rule Program
ruleProgram 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getProgramAccess().getMainAssignment()); }
		(rule__Program__MainAssignment)
		{ after(grammarAccess.getProgramAccess().getMainAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMain
entryRuleMain
:
{ before(grammarAccess.getMainRule()); }
	 ruleMain
{ after(grammarAccess.getMainRule()); } 
	 EOF 
;

// Rule Main
ruleMain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMainAccess().getGroup()); }
		(rule__Main__Group__0)
		{ after(grammarAccess.getMainAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCommand
entryRuleCommand
:
{ before(grammarAccess.getCommandRule()); }
	 ruleCommand
{ after(grammarAccess.getCommandRule()); } 
	 EOF 
;

// Rule Command
ruleCommand 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCommandAccess().getAlternatives()); }
		(rule__Command__Alternatives)
		{ after(grammarAccess.getCommandAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTakeoff
entryRuleTakeoff
:
{ before(grammarAccess.getTakeoffRule()); }
	 ruleTakeoff
{ after(grammarAccess.getTakeoffRule()); } 
	 EOF 
;

// Rule Takeoff
ruleTakeoff 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTakeoffAccess().getTAKEOFFKeyword()); }
		'TAKEOFF'
		{ after(grammarAccess.getTakeoffAccess().getTAKEOFFKeyword()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLand
entryRuleLand
:
{ before(grammarAccess.getLandRule()); }
	 ruleLand
{ after(grammarAccess.getLandRule()); } 
	 EOF 
;

// Rule Land
ruleLand 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLandAccess().getLANDKeyword()); }
		'LAND'
		{ after(grammarAccess.getLandAccess().getLANDKeyword()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUp
entryRuleUp
:
{ before(grammarAccess.getUpRule()); }
	 ruleUp
{ after(grammarAccess.getUpRule()); } 
	 EOF 
;

// Rule Up
ruleUp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUpAccess().getGroup()); }
		(rule__Up__Group__0)
		{ after(grammarAccess.getUpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDown
entryRuleDown
:
{ before(grammarAccess.getDownRule()); }
	 ruleDown
{ after(grammarAccess.getDownRule()); } 
	 EOF 
;

// Rule Down
ruleDown 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDownAccess().getGroup()); }
		(rule__Down__Group__0)
		{ after(grammarAccess.getDownAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLeft
entryRuleLeft
:
{ before(grammarAccess.getLeftRule()); }
	 ruleLeft
{ after(grammarAccess.getLeftRule()); } 
	 EOF 
;

// Rule Left
ruleLeft 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLeftAccess().getGroup()); }
		(rule__Left__Group__0)
		{ after(grammarAccess.getLeftAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRight
entryRuleRight
:
{ before(grammarAccess.getRightRule()); }
	 ruleRight
{ after(grammarAccess.getRightRule()); } 
	 EOF 
;

// Rule Right
ruleRight 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRightAccess().getGroup()); }
		(rule__Right__Group__0)
		{ after(grammarAccess.getRightAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleForward
entryRuleForward
:
{ before(grammarAccess.getForwardRule()); }
	 ruleForward
{ after(grammarAccess.getForwardRule()); } 
	 EOF 
;

// Rule Forward
ruleForward 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getForwardAccess().getGroup()); }
		(rule__Forward__Group__0)
		{ after(grammarAccess.getForwardAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBackward
entryRuleBackward
:
{ before(grammarAccess.getBackwardRule()); }
	 ruleBackward
{ after(grammarAccess.getBackwardRule()); } 
	 EOF 
;

// Rule Backward
ruleBackward 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBackwardAccess().getGroup()); }
		(rule__Backward__Group__0)
		{ after(grammarAccess.getBackwardAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRotateL
entryRuleRotateL
:
{ before(grammarAccess.getRotateLRule()); }
	 ruleRotateL
{ after(grammarAccess.getRotateLRule()); } 
	 EOF 
;

// Rule RotateL
ruleRotateL 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRotateLAccess().getGroup()); }
		(rule__RotateL__Group__0)
		{ after(grammarAccess.getRotateLAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRotateR
entryRuleRotateR
:
{ before(grammarAccess.getRotateRRule()); }
	 ruleRotateR
{ after(grammarAccess.getRotateRRule()); } 
	 EOF 
;

// Rule RotateR
ruleRotateR 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRotateRAccess().getGroup()); }
		(rule__RotateR__Group__0)
		{ after(grammarAccess.getRotateRAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleWait
entryRuleWait
:
{ before(grammarAccess.getWaitRule()); }
	 ruleWait
{ after(grammarAccess.getWaitRule()); } 
	 EOF 
;

// Rule Wait
ruleWait 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getWaitAccess().getGroup()); }
		(rule__Wait__Group__0)
		{ after(grammarAccess.getWaitAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCommandAccess().getGroup_0()); }
		(rule__Command__Group_0__0)
		{ after(grammarAccess.getCommandAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getGroup_1()); }
		(rule__Command__Group_1__0)
		{ after(grammarAccess.getCommandAccess().getGroup_1()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getUpParserRuleCall_2()); }
		ruleUp
		{ after(grammarAccess.getCommandAccess().getUpParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getDownParserRuleCall_3()); }
		ruleDown
		{ after(grammarAccess.getCommandAccess().getDownParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getLeftParserRuleCall_4()); }
		ruleLeft
		{ after(grammarAccess.getCommandAccess().getLeftParserRuleCall_4()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getRightParserRuleCall_5()); }
		ruleRight
		{ after(grammarAccess.getCommandAccess().getRightParserRuleCall_5()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getForwardParserRuleCall_6()); }
		ruleForward
		{ after(grammarAccess.getCommandAccess().getForwardParserRuleCall_6()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getBackwardParserRuleCall_7()); }
		ruleBackward
		{ after(grammarAccess.getCommandAccess().getBackwardParserRuleCall_7()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getRotateLParserRuleCall_8()); }
		ruleRotateL
		{ after(grammarAccess.getCommandAccess().getRotateLParserRuleCall_8()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getRotateRParserRuleCall_9()); }
		ruleRotateR
		{ after(grammarAccess.getCommandAccess().getRotateRParserRuleCall_9()); }
	)
	|
	(
		{ before(grammarAccess.getCommandAccess().getWaitParserRuleCall_10()); }
		ruleWait
		{ after(grammarAccess.getCommandAccess().getWaitParserRuleCall_10()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group__0__Impl
	rule__Main__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getXdroneKeyword_0()); }
	'xdrone'
	{ after(grammarAccess.getMainAccess().getXdroneKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group__1__Impl
	rule__Main__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getNameAssignment_1()); }
	(rule__Main__NameAssignment_1)
	{ after(grammarAccess.getMainAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group__2__Impl
	rule__Main__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getBeginKeyword_2()); }
	'begin'
	{ after(grammarAccess.getMainAccess().getBeginKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group__3__Impl
	rule__Main__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getGroup_3()); }
	(rule__Main__Group_3__0)*
	{ after(grammarAccess.getMainAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getEndKeyword_4()); }
	'end'
	{ after(grammarAccess.getMainAccess().getEndKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Main__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group_3__0__Impl
	rule__Main__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getCommandsAssignment_3_0()); }
	(rule__Main__CommandsAssignment_3_0)
	{ after(grammarAccess.getMainAccess().getCommandsAssignment_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Main__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMainAccess().getSemicolonKeyword_3_1()); }
	(';')?
	{ after(grammarAccess.getMainAccess().getSemicolonKeyword_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Command__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Command__Group_0__0__Impl
	rule__Command__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCommandAccess().getCommandAction_0_0()); }
	()
	{ after(grammarAccess.getCommandAccess().getCommandAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Command__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCommandAccess().getTakeoffParserRuleCall_0_1()); }
	ruleTakeoff
	{ after(grammarAccess.getCommandAccess().getTakeoffParserRuleCall_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Command__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Command__Group_1__0__Impl
	rule__Command__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCommandAccess().getCommandAction_1_0()); }
	()
	{ after(grammarAccess.getCommandAccess().getCommandAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Command__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Command__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCommandAccess().getLandParserRuleCall_1_1()); }
	ruleLand
	{ after(grammarAccess.getCommandAccess().getLandParserRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Up__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Up__Group__0__Impl
	rule__Up__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUpAccess().getUPKeyword_0()); }
	'UP'
	{ after(grammarAccess.getUpAccess().getUPKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Up__Group__1__Impl
	rule__Up__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUpAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getUpAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Up__Group__2__Impl
	rule__Up__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUpAccess().getMillisecondsAssignment_2()); }
	(rule__Up__MillisecondsAssignment_2)
	{ after(grammarAccess.getUpAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Up__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUpAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getUpAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Down__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Down__Group__0__Impl
	rule__Down__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDownAccess().getDOWNKeyword_0()); }
	'DOWN'
	{ after(grammarAccess.getDownAccess().getDOWNKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Down__Group__1__Impl
	rule__Down__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDownAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getDownAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Down__Group__2__Impl
	rule__Down__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDownAccess().getMillisecondsAssignment_2()); }
	(rule__Down__MillisecondsAssignment_2)
	{ after(grammarAccess.getDownAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Down__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDownAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getDownAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Left__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Left__Group__0__Impl
	rule__Left__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLeftAccess().getLEFTKeyword_0()); }
	'LEFT'
	{ after(grammarAccess.getLeftAccess().getLEFTKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Left__Group__1__Impl
	rule__Left__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLeftAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getLeftAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Left__Group__2__Impl
	rule__Left__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLeftAccess().getMillisecondsAssignment_2()); }
	(rule__Left__MillisecondsAssignment_2)
	{ after(grammarAccess.getLeftAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Left__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLeftAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getLeftAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Right__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Right__Group__0__Impl
	rule__Right__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRightAccess().getRIGHTKeyword_0()); }
	'RIGHT'
	{ after(grammarAccess.getRightAccess().getRIGHTKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Right__Group__1__Impl
	rule__Right__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRightAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getRightAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Right__Group__2__Impl
	rule__Right__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRightAccess().getMillisecondsAssignment_2()); }
	(rule__Right__MillisecondsAssignment_2)
	{ after(grammarAccess.getRightAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Right__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRightAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getRightAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Forward__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Forward__Group__0__Impl
	rule__Forward__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardAccess().getFORWARDKeyword_0()); }
	'FORWARD'
	{ after(grammarAccess.getForwardAccess().getFORWARDKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Forward__Group__1__Impl
	rule__Forward__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getForwardAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Forward__Group__2__Impl
	rule__Forward__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardAccess().getMillisecondsAssignment_2()); }
	(rule__Forward__MillisecondsAssignment_2)
	{ after(grammarAccess.getForwardAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Forward__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getForwardAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Backward__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Backward__Group__0__Impl
	rule__Backward__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBackwardAccess().getBACKWARDKeyword_0()); }
	'BACKWARD'
	{ after(grammarAccess.getBackwardAccess().getBACKWARDKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Backward__Group__1__Impl
	rule__Backward__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBackwardAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getBackwardAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Backward__Group__2__Impl
	rule__Backward__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBackwardAccess().getMillisecondsAssignment_2()); }
	(rule__Backward__MillisecondsAssignment_2)
	{ after(grammarAccess.getBackwardAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Backward__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBackwardAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getBackwardAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RotateL__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateL__Group__0__Impl
	rule__RotateL__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateLAccess().getROTATELEFTKeyword_0()); }
	'ROTATELEFT'
	{ after(grammarAccess.getRotateLAccess().getROTATELEFTKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateL__Group__1__Impl
	rule__RotateL__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateLAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getRotateLAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateL__Group__2__Impl
	rule__RotateL__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateLAccess().getMillisecondsAssignment_2()); }
	(rule__RotateL__MillisecondsAssignment_2)
	{ after(grammarAccess.getRotateLAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateL__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateLAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getRotateLAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RotateR__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateR__Group__0__Impl
	rule__RotateR__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateRAccess().getROTATERIGHTKeyword_0()); }
	'ROTATERIGHT'
	{ after(grammarAccess.getRotateRAccess().getROTATERIGHTKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateR__Group__1__Impl
	rule__RotateR__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateRAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getRotateRAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateR__Group__2__Impl
	rule__RotateR__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateRAccess().getMillisecondsAssignment_2()); }
	(rule__RotateR__MillisecondsAssignment_2)
	{ after(grammarAccess.getRotateRAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RotateR__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRotateRAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getRotateRAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Wait__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Wait__Group__0__Impl
	rule__Wait__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWaitAccess().getWAITKeyword_0()); }
	'WAIT'
	{ after(grammarAccess.getWaitAccess().getWAITKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Wait__Group__1__Impl
	rule__Wait__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWaitAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getWaitAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Wait__Group__2__Impl
	rule__Wait__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWaitAccess().getMillisecondsAssignment_2()); }
	(rule__Wait__MillisecondsAssignment_2)
	{ after(grammarAccess.getWaitAccess().getMillisecondsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Wait__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWaitAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getWaitAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Program__MainAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramAccess().getMainMainParserRuleCall_0()); }
		ruleMain
		{ after(grammarAccess.getProgramAccess().getMainMainParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMainAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getMainAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Main__CommandsAssignment_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMainAccess().getCommandsCommandParserRuleCall_3_0_0()); }
		ruleCommand
		{ after(grammarAccess.getMainAccess().getCommandsCommandParserRuleCall_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Up__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUpAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getUpAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Down__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDownAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getDownAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLeftAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getLeftAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRightAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getRightAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Forward__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getForwardAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getForwardAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Backward__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBackwardAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getBackwardAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateL__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRotateLAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getRotateLAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RotateR__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRotateRAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getRotateRAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Wait__MillisecondsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWaitAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getWaitAccess().getMillisecondsINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
