/*
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone.ide.contentassist.antlr;

import com.google.inject.Inject;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import uk.ac.ox.cs.xdrone.ide.contentassist.antlr.internal.InternalXDroneParser;
import uk.ac.ox.cs.xdrone.services.XDroneGrammarAccess;

public class XDroneParser extends AbstractContentAssistParser {

	@Inject
	private XDroneGrammarAccess grammarAccess;

	private Map<AbstractElement, String> nameMappings;

	@Override
	protected InternalXDroneParser createParser() {
		InternalXDroneParser result = new InternalXDroneParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getCommandAccess().getAlternatives(), "rule__Command__Alternatives");
					put(grammarAccess.getExecutableAccess().getAlternatives(), "rule__Executable__Alternatives");
					put(grammarAccess.getPrimaryAccess().getAlternatives(), "rule__Primary__Alternatives");
					put(grammarAccess.getProgramAccess().getGroup(), "rule__Program__Group__0");
					put(grammarAccess.getFunAccess().getGroup(), "rule__Fun__Group__0");
					put(grammarAccess.getFunAccess().getGroup_2(), "rule__Fun__Group_2__0");
					put(grammarAccess.getParameterAccess().getGroup(), "rule__Parameter__Group__0");
					put(grammarAccess.getMainAccess().getGroup(), "rule__Main__Group__0");
					put(grammarAccess.getMainAccess().getGroup_2(), "rule__Main__Group_2__0");
					put(grammarAccess.getMainAccess().getGroup_4(), "rule__Main__Group_4__0");
					put(grammarAccess.getMainAccess().getGroup_5(), "rule__Main__Group_5__0");
					put(grammarAccess.getBodyAccess().getGroup(), "rule__Body__Group__0");
					put(grammarAccess.getBodyAccess().getGroup_2(), "rule__Body__Group_2__0");
					put(grammarAccess.getBodyAccess().getGroup_3(), "rule__Body__Group_3__0");
					put(grammarAccess.getAdditionAccess().getGroup(), "rule__Addition__Group__0");
					put(grammarAccess.getAdditionAccess().getGroup_1(), "rule__Addition__Group_1__0");
					put(grammarAccess.getMultiplicationAccess().getGroup(), "rule__Multiplication__Group__0");
					put(grammarAccess.getMultiplicationAccess().getGroup_1(), "rule__Multiplication__Group_1__0");
					put(grammarAccess.getPrimaryAccess().getGroup_1(), "rule__Primary__Group_1__0");
					put(grammarAccess.getProgramAccess().getSubProgramsAssignment_0(), "rule__Program__SubProgramsAssignment_0");
					put(grammarAccess.getProgramAccess().getMainAssignment_1(), "rule__Program__MainAssignment_1");
					put(grammarAccess.getFunAccess().getNameAssignment_1(), "rule__Fun__NameAssignment_1");
					put(grammarAccess.getFunAccess().getParametersAssignment_2_1(), "rule__Fun__ParametersAssignment_2_1");
					put(grammarAccess.getFunAccess().getBodyAssignment_3(), "rule__Fun__BodyAssignment_3");
					put(grammarAccess.getParameterAccess().getNameAssignment_0(), "rule__Parameter__NameAssignment_0");
					put(grammarAccess.getParameterAccess().getTypeAssignment_1(), "rule__Parameter__TypeAssignment_1");
					put(grammarAccess.getMainAccess().getNameAssignment_1(), "rule__Main__NameAssignment_1");
					put(grammarAccess.getMainAccess().getParametersAssignment_2_1(), "rule__Main__ParametersAssignment_2_1");
					put(grammarAccess.getMainAccess().getCommandsAssignment_4_0(), "rule__Main__CommandsAssignment_4_0");
					put(grammarAccess.getBodyAccess().getCommandsAssignment_2_0(), "rule__Body__CommandsAssignment_2_0");
					put(grammarAccess.getAdditionAccess().getRightAssignment_1_2(), "rule__Addition__RightAssignment_1_2");
					put(grammarAccess.getMultiplicationAccess().getRightAssignment_1_2(), "rule__Multiplication__RightAssignment_1_2");
					put(grammarAccess.getNumberAccess().getValueAssignment(), "rule__Number__ValueAssignment");
				}
			};
		}
		return nameMappings.get(element);
	}

	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			InternalXDroneParser typedParser = (InternalXDroneParser) parser;
			typedParser.entryRuleProgram();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public XDroneGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(XDroneGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
