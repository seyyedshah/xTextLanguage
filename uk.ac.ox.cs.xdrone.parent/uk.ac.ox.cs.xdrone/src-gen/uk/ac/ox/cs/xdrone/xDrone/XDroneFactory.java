/**
 * generated by Xtext 2.10.0
 */
package uk.ac.ox.cs.xdrone.xDrone;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see uk.ac.ox.cs.xdrone.xDrone.XDronePackage
 * @generated
 */
public interface XDroneFactory extends EFactory
{
  /**
   * The singleton instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  XDroneFactory eINSTANCE = uk.ac.ox.cs.xdrone.xDrone.impl.XDroneFactoryImpl.init();

  /**
   * Returns a new object of class '<em>Program</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Program</em>'.
   * @generated
   */
  Program createProgram();

  /**
   * Returns a new object of class '<em>Main</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Main</em>'.
   * @generated
   */
  Main createMain();

  /**
   * Returns a new object of class '<em>Command</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Command</em>'.
   * @generated
   */
  Command createCommand();

  /**
   * Returns a new object of class '<em>UP</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>UP</em>'.
   * @generated
   */
  UP createUP();

  /**
   * Returns a new object of class '<em>DOWN</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>DOWN</em>'.
   * @generated
   */
  DOWN createDOWN();

  /**
   * Returns a new object of class '<em>LEFT</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>LEFT</em>'.
   * @generated
   */
  LEFT createLEFT();

  /**
   * Returns a new object of class '<em>RIGHT</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>RIGHT</em>'.
   * @generated
   */
  RIGHT createRIGHT();

  /**
   * Returns a new object of class '<em>FORWARD</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>FORWARD</em>'.
   * @generated
   */
  FORWARD createFORWARD();

  /**
   * Returns a new object of class '<em>BACKWARD</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>BACKWARD</em>'.
   * @generated
   */
  BACKWARD createBACKWARD();

  /**
   * Returns a new object of class '<em>ROTATE</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>ROTATE</em>'.
   * @generated
   */
  ROTATE createROTATE();

  /**
   * Returns the package supported by this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the package supported by this factory.
   * @generated
   */
  XDronePackage getXDronePackage();

} //XDroneFactory
