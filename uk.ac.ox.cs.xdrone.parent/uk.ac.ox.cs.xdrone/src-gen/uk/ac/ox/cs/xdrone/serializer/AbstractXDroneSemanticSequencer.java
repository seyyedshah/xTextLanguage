/*
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import uk.ac.ox.cs.xdrone.services.XDroneGrammarAccess;
import uk.ac.ox.cs.xdrone.xDrone.BACKWARD;
import uk.ac.ox.cs.xdrone.xDrone.Command;
import uk.ac.ox.cs.xdrone.xDrone.DOWN;
import uk.ac.ox.cs.xdrone.xDrone.FORWARD;
import uk.ac.ox.cs.xdrone.xDrone.LEFT;
import uk.ac.ox.cs.xdrone.xDrone.Main;
import uk.ac.ox.cs.xdrone.xDrone.Program;
import uk.ac.ox.cs.xdrone.xDrone.RIGHT;
import uk.ac.ox.cs.xdrone.xDrone.ROTATE;
import uk.ac.ox.cs.xdrone.xDrone.UP;
import uk.ac.ox.cs.xdrone.xDrone.XDronePackage;

@SuppressWarnings("all")
public abstract class AbstractXDroneSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private XDroneGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == XDronePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case XDronePackage.BACKWARD:
				sequence_BACKWARD(context, (BACKWARD) semanticObject); 
				return; 
			case XDronePackage.COMMAND:
				sequence_Command(context, (Command) semanticObject); 
				return; 
			case XDronePackage.DOWN:
				sequence_DOWN(context, (DOWN) semanticObject); 
				return; 
			case XDronePackage.FORWARD:
				sequence_FORWARD(context, (FORWARD) semanticObject); 
				return; 
			case XDronePackage.LEFT:
				sequence_LEFT(context, (LEFT) semanticObject); 
				return; 
			case XDronePackage.MAIN:
				sequence_Main(context, (Main) semanticObject); 
				return; 
			case XDronePackage.PROGRAM:
				sequence_Program(context, (Program) semanticObject); 
				return; 
			case XDronePackage.RIGHT:
				sequence_RIGHT(context, (RIGHT) semanticObject); 
				return; 
			case XDronePackage.ROTATE:
				sequence_ROTATE(context, (ROTATE) semanticObject); 
				return; 
			case XDronePackage.UP:
				sequence_UP(context, (UP) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Contexts:
	 *     Command returns BACKWARD
	 *     BACKWARD returns BACKWARD
	 *
	 * Constraint:
	 *     milliseconds=INT
	 */
	protected void sequence_BACKWARD(ISerializationContext context, BACKWARD semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.BACKWARD__MILLISECONDS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.BACKWARD__MILLISECONDS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getBACKWARDAccess().getMillisecondsINTTerminalRuleCall_2_0(), semanticObject.getMilliseconds());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Command returns Command
	 *
	 * Constraint:
	 *     {Command}
	 */
	protected void sequence_Command(ISerializationContext context, Command semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Command returns DOWN
	 *     DOWN returns DOWN
	 *
	 * Constraint:
	 *     milliseconds=INT
	 */
	protected void sequence_DOWN(ISerializationContext context, DOWN semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.DOWN__MILLISECONDS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.DOWN__MILLISECONDS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getDOWNAccess().getMillisecondsINTTerminalRuleCall_2_0(), semanticObject.getMilliseconds());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Command returns FORWARD
	 *     FORWARD returns FORWARD
	 *
	 * Constraint:
	 *     milliseconds=INT
	 */
	protected void sequence_FORWARD(ISerializationContext context, FORWARD semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.FORWARD__MILLISECONDS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.FORWARD__MILLISECONDS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getFORWARDAccess().getMillisecondsINTTerminalRuleCall_2_0(), semanticObject.getMilliseconds());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Command returns LEFT
	 *     LEFT returns LEFT
	 *
	 * Constraint:
	 *     milliseconds=INT
	 */
	protected void sequence_LEFT(ISerializationContext context, LEFT semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.LEFT__MILLISECONDS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.LEFT__MILLISECONDS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getLEFTAccess().getMillisecondsINTTerminalRuleCall_2_0(), semanticObject.getMilliseconds());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Main returns Main
	 *
	 * Constraint:
	 *     (name=ID commands+=Command*)
	 */
	protected void sequence_Main(ISerializationContext context, Main semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Program returns Program
	 *
	 * Constraint:
	 *     main=Main
	 */
	protected void sequence_Program(ISerializationContext context, Program semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.PROGRAM__MAIN) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.PROGRAM__MAIN));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getProgramAccess().getMainMainParserRuleCall_0(), semanticObject.getMain());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Command returns RIGHT
	 *     RIGHT returns RIGHT
	 *
	 * Constraint:
	 *     milliseconds=INT
	 */
	protected void sequence_RIGHT(ISerializationContext context, RIGHT semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.RIGHT__MILLISECONDS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.RIGHT__MILLISECONDS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getRIGHTAccess().getMillisecondsINTTerminalRuleCall_2_0(), semanticObject.getMilliseconds());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Command returns ROTATE
	 *     ROTATE returns ROTATE
	 *
	 * Constraint:
	 *     degrees=INT
	 */
	protected void sequence_ROTATE(ISerializationContext context, ROTATE semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.ROTATE__DEGREES) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.ROTATE__DEGREES));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getROTATEAccess().getDegreesINTTerminalRuleCall_2_0(), semanticObject.getDegrees());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Command returns UP
	 *     UP returns UP
	 *
	 * Constraint:
	 *     milliseconds=INT
	 */
	protected void sequence_UP(ISerializationContext context, UP semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, XDronePackage.Literals.UP__MILLISECONDS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, XDronePackage.Literals.UP__MILLISECONDS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getUPAccess().getMillisecondsINTTerminalRuleCall_2_0(), semanticObject.getMilliseconds());
		feeder.finish();
	}
	
	
}
