/**
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone;

import uk.ac.ox.cs.xdrone.XDroneStandaloneSetupGenerated;

/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
@SuppressWarnings("all")
public class XDroneStandaloneSetup extends XDroneStandaloneSetupGenerated {
  public static void doSetup() {
    XDroneStandaloneSetup _xDroneStandaloneSetup = new XDroneStandaloneSetup();
    _xDroneStandaloneSetup.createInjectorAndDoEMFRegistration();
  }
}
