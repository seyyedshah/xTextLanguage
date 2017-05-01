/**
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone.generator;

import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.generator.AbstractGenerator;
import org.eclipse.xtext.generator.IFileSystemAccess2;
import org.eclipse.xtext.generator.IGeneratorContext;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.IteratorExtensions;
import uk.ac.ox.cs.xdrone.xDrone.Backward;
import uk.ac.ox.cs.xdrone.xDrone.Command;
import uk.ac.ox.cs.xdrone.xDrone.Down;
import uk.ac.ox.cs.xdrone.xDrone.Forward;
import uk.ac.ox.cs.xdrone.xDrone.Left;
import uk.ac.ox.cs.xdrone.xDrone.Main;
import uk.ac.ox.cs.xdrone.xDrone.Right;
import uk.ac.ox.cs.xdrone.xDrone.RotateL;
import uk.ac.ox.cs.xdrone.xDrone.RotateR;
import uk.ac.ox.cs.xdrone.xDrone.Up;
import uk.ac.ox.cs.xdrone.xDrone.Wait;

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
@SuppressWarnings("all")
public class XDroneGenerator extends AbstractGenerator {
  public CharSequence compile(final Main main) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("var arDrone = require(\'ar-drone\'); ");
    _builder.newLine();
    _builder.append("var client  = arDrone.createClient();");
    _builder.newLine();
    _builder.append("client.takeoff();");
    _builder.newLine();
    _builder.append("client");
    _builder.newLine();
    _builder.append("  ");
    _builder.append(".after(5000, function() {");
    _builder.newLine();
    {
      EList<Command> _commands = main.getCommands();
      for(final Command f : _commands) {
        CharSequence _compile = this.compile(f);
        _builder.append(_compile, "");
        _builder.newLineIfNotEmpty();
      }
    }
    _builder.append("   ");
    _builder.append("this.stop();");
    _builder.newLine();
    _builder.append("   ");
    _builder.append("this.land();");
    _builder.newLine();
    _builder.append("  ");
    _builder.append("}).after(5000, function () {");
    _builder.newLine();
    _builder.append("  \t");
    _builder.append("process.exit(0);");
    _builder.newLine();
    _builder.append("  ");
    _builder.append("});");
    _builder.newLine();
    return _builder;
  }
  
  public CharSequence compile(final Command cmd) {
    StringConcatenation _builder = new StringConcatenation();
    {
      if ((cmd instanceof Up)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.up(0.5);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds = ((Up)cmd).getMilliseconds();
        _builder.append(_milliseconds, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof Down)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.down(0.5);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_1 = ((Down)cmd).getMilliseconds();
        _builder.append(_milliseconds_1, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof Left)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.left(0.5);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_2 = ((Left)cmd).getMilliseconds();
        _builder.append(_milliseconds_2, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof Right)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.right(0.5);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_3 = ((Right)cmd).getMilliseconds();
        _builder.append(_milliseconds_3, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof Forward)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.front(0.5);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_4 = ((Forward)cmd).getMilliseconds();
        _builder.append(_milliseconds_4, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof Backward)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.back(0.5);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_5 = ((Backward)cmd).getMilliseconds();
        _builder.append(_milliseconds_5, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof RotateL)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.counterClockwise(0.1);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_6 = ((RotateL)cmd).getMilliseconds();
        _builder.append(_milliseconds_6, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof RotateR)) {
        _builder.append("  ");
        _builder.append("this.stop();");
        _builder.newLine();
        _builder.append("  ");
        _builder.append("this.clockwise(0.1);");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_7 = ((RotateR)cmd).getMilliseconds();
        _builder.append(_milliseconds_7, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    {
      if ((cmd instanceof Wait)) {
        _builder.append("  ");
        _builder.append("this.stop();\t");
        _builder.newLine();
        _builder.append("})");
        _builder.newLine();
        _builder.append(".after(");
        int _milliseconds_8 = ((Wait)cmd).getMilliseconds();
        _builder.append(_milliseconds_8, "");
        _builder.append(", function() {");
        _builder.newLineIfNotEmpty();
      }
    }
    return _builder;
  }
  
  @Override
  public void doGenerate(final Resource resource, final IFileSystemAccess2 fsa, final IGeneratorContext context) {
    String result = "";
    TreeIterator<EObject> _allContents = resource.getAllContents();
    Iterable<EObject> _iterable = IteratorExtensions.<EObject>toIterable(_allContents);
    Iterable<Main> _filter = Iterables.<Main>filter(_iterable, Main.class);
    for (final Main main : _filter) {
      {
        CharSequence _compile = this.compile(main);
        String _string = _compile.toString();
        result = _string;
        fsa.generateFile("result.js", result);
      }
    }
    Object main_1 = null;
    TreeIterator<EObject> _allContents_1 = resource.getAllContents();
    Iterator<Main> _filter_1 = Iterators.<Main>filter(_allContents_1, Main.class);
    boolean _notEquals = (!Objects.equal(_filter_1, null));
    if (_notEquals) {
    }
    try {
      PrintWriter writer = new PrintWriter("/tmp/result.js", "UTF-8");
      writer.println(result);
      writer.close();
    } catch (final Throwable _t) {
      if (_t instanceof IOException) {
        final IOException e = (IOException)_t;
      } else {
        throw Exceptions.sneakyThrow(_t);
      }
    }
    fsa.generateFile("result.js", result);
  }
}
