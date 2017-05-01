/*
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import uk.ac.ox.cs.xdrone.xDrone.Main
import org.eclipse.xtext.generator.JavaIoFileSystemAccess
import com.google.inject.Guice
import org.eclipse.xtext.service.AbstractGenericModule
import org.eclipse.xtext.parser.IEncodingProvider
import java.io.IOException
import java.io.PrintWriter
import uk.ac.ox.cs.xdrone.xDrone.Up
import uk.ac.ox.cs.xdrone.xDrone.Command
import uk.ac.ox.cs.xdrone.xDrone.Down
import uk.ac.ox.cs.xdrone.xDrone.Left
import uk.ac.ox.cs.xdrone.xDrone.Right
import uk.ac.ox.cs.xdrone.xDrone.Forward
import uk.ac.ox.cs.xdrone.xDrone.Backward
import uk.ac.ox.cs.xdrone.xDrone.RotateL
import uk.ac.ox.cs.xdrone.xDrone.RotateR

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class XDroneGenerator extends AbstractGenerator {

	def compile(Main main)'''
		var arDrone = require('ar-drone'); 
		var client  = arDrone.createClient();
		client.takeoff();
		client
		  .after(5000, function() {
		«FOR f : main.commands» 
			«f.compile»
		«ENDFOR»
		   this.stop();
		   this.land();
		  }).after(5000, function () {
		  	process.exit(0);
		  });
	'''
	def compile(Command cmd) '''
		«IF cmd instanceof Up »
		    this.stop();
		    this.up(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof Down »
		    this.stop();
		    this.down(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof Left »
		    this.stop();
		    this.left(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof Right »
		    this.stop();
		    this.right(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof Forward »
		    this.stop();
		    this.front(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof Backward »
		    this.stop();
		    this.back(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof RotateL »
		    this.stop();
		    this.counterClockwise(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	  	«IF cmd instanceof RotateR »
		    this.stop();
		    this.clockwise(0.5);
		  })
		  .after(«cmd.milliseconds», function() {
	  	«ENDIF»
	'''
	
	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		var result = "";
		for(main : resource.allContents.toIterable.filter(Main)) {
			result = main.compile.toString; 
			fsa.generateFile('result.js', result)
		
		}

		var main = null;
		if (resource.allContents
				.filter(typeof(Main)) != null) {
					////main = resource.allContents.toIterable.filter(typeof(Main))
				}
		
		try {
		    var writer = new PrintWriter("/tmp/result.js", "UTF-8");
		    writer.println(result);
		    writer.close();
		} catch (IOException e) {
		   // do something
		}
		
		
		
		/*
		var fsa1 = new JavaIoFileSystemAccess();
		
		Guice.createInjector(new AbstractGenericModule() {
			
			public Class<? extends IEncodingProvider> bindIEncodingProvider() {
				return IEncodingProvider.Runtime.class;
			}
			
		}).injectMembers(fsa);
		

		fsa1.setOutputPath("/tmp");
		fsa1.generateFile("xxxx.txt", "contents");
		*/
		
		//fsa.setOutputPath('/tmp')
		fsa.generateFile('result.js', result)
		
			/* 
			resource.allContents
				.filter(typeof(Main))
				.map[name]
				.join(', ')
				)*/
	}
}
