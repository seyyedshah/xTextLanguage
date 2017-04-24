/**
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone.web;

import com.google.inject.Inject;
import java.io.File;
import java.io.FileWriter;
import org.eclipse.emf.common.util.URI;
import org.eclipse.xtext.web.server.IServiceContext;
import org.eclipse.xtext.web.server.IServiceResult;
import org.eclipse.xtext.web.server.InvalidRequestException;
import org.eclipse.xtext.web.server.ServiceConflictResult;
import org.eclipse.xtext.web.server.XtextServiceDispatcher;
import org.eclipse.xtext.web.server.model.DocumentStateResult;
import org.eclipse.xtext.web.server.model.XtextWebDocument;
import org.eclipse.xtext.web.server.persistence.IResourceBaseProvider;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.Functions.Function0;
import org.eclipse.xtext.xbase.lib.InputOutput;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;

@SuppressWarnings("all")
public class XDroneServiceDispatcher extends XtextServiceDispatcher {
  @Inject
  private IResourceBaseProvider resourceBaseProvider;
  
  @Override
  protected XtextServiceDispatcher.ServiceDescriptor createServiceDescriptor(final String serviceType, final IServiceContext context) {
    throw new Error("Unresolved compilation problems:"
      + "\nType mismatch: cannot convert from void to ServiceDescriptor");
  }
  
  protected void getStoreResourceService(final IServiceContext context) throws InvalidRequestException {
    final String resourceId = context.getParameter("resource");
    if ((resourceId == null)) {
      throw new InvalidRequestException("The parameter \'resource\' is required.");
    }
  }
  
  protected XtextServiceDispatcher.ServiceDescriptor getDeployService(final IServiceContext context) throws InvalidRequestException {
    XtextServiceDispatcher.ServiceDescriptor _xblockexpression = null;
    {
      final String resourceId = context.getParameter("resource");
      if ((resourceId == null)) {
        throw new InvalidRequestException("The parameter \'resource\' is required.");
      }
      XtextServiceDispatcher.ServiceDescriptor _serviceDescriptor = new XtextServiceDispatcher.ServiceDescriptor();
      final Procedure1<XtextServiceDispatcher.ServiceDescriptor> _function = (XtextServiceDispatcher.ServiceDescriptor it) -> {
        final Function0<IServiceResult> _function_1 = () -> {
          ServiceConflictResult _xtrycatchfinallyexpression = null;
          try {
            final URI uri = this.resourceBaseProvider.getFileURI(resourceId);
            String _fileString = uri.toFileString();
            final File file = new File(_fileString);
            FileWriter writer = null;
            try {
              FileWriter _fileWriter = new FileWriter(file);
              writer = _fileWriter;
              final String fullText = context.getParameter("fullText");
              if ((fullText != null)) {
                writer.write(fullText);
              }
            } finally {
              if ((writer != null)) {
                writer.close();
              }
            }
            final XtextWebDocument document = this.getResourceDocument(resourceId, context);
            String _absolutePath = file.getAbsolutePath();
            String _plus = ("preparing to run command: /bin/bash -c /booster2/booster-deploy.sh " + _absolutePath);
            String _plus_1 = (_plus + " > /tmp/booster.log");
            InputOutput.<String>println(_plus_1);
            ProcessBuilder _processBuilder = new ProcessBuilder();
            ProcessBuilder _inheritIO = _processBuilder.inheritIO();
            String _absolutePath_1 = file.getAbsolutePath();
            String _plus_2 = ("/booster2/booster-deploy.sh " + _absolutePath_1);
            String _plus_3 = (_plus_2 + " > /tmp/booster.log");
            ProcessBuilder _command = _inheritIO.command("/bin/bash", "-c", _plus_3);
            final Process pb = _command.start();
            boolean _isAlive = pb.isAlive();
            boolean _not = (!_isAlive);
            if (_not) {
              int _exitValue = pb.exitValue();
              String _plus_4 = ("exit code: " + Integer.valueOf(_exitValue));
              InputOutput.<String>println(_plus_4);
            }
            String _stateId = document.getStateId();
            return new DocumentStateResult(_stateId);
          } catch (final Throwable _t) {
            if (_t instanceof Throwable) {
              final Throwable throwable = (Throwable)_t;
              _xtrycatchfinallyexpression = this.handleError(it, throwable);
            } else {
              throw Exceptions.sneakyThrow(_t);
            }
          }
          return _xtrycatchfinallyexpression;
        };
        it.setService(_function_1);
        it.setHasSideEffects(true);
      };
      _xblockexpression = ObjectExtensions.<XtextServiceDispatcher.ServiceDescriptor>operator_doubleArrow(_serviceDescriptor, _function);
    }
    return _xblockexpression;
  }
}
