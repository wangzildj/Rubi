(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[Tanh[a_.+b_.*x_+c_.*x_^2]^n_.,x_Symbol] :=
  Integral[Tanh[a+b*x+c*x^2]^n,x] /;
FreeQ[{a,b,c,n},x]


(* ::Code:: *)
Int[Coth[a_.+b_.*x_+c_.*x_^2]^n_.,x_Symbol] :=
  Integral[Coth[a+b*x+c*x^2]^n,x] /;
FreeQ[{a,b,c,n},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)*Tanh[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  e*Log[Cosh[a+b*x+c*x^2]]/(2*c) + 
  (2*c*d-b*e)/(2*c)*Int[Tanh[a+b*x+c*x^2],x] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)*Coth[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  e*Log[Sinh[a+b*x+c*x^2]]/(2*c) + 
  (2*c*d-b*e)/(2*c)*Int[Coth[a+b*x+c*x^2],x] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
(* Int[x_^m_*Tanh[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  x^(m-1)*Log[Cosh[a+b*x+c*x^2]]/(2*c) -
  b/(2*c)*Int[x^(m-1)*Tanh[a+b*x+c*x^2],x] -
  (m-1)/(2*c)*Int[x^(m-2)*Log[Cosh[a+b*x+c*x^2]],x] /;
FreeQ[{a,b,c},x] && GtQ[m,1] *)


(* ::Code:: *)
(* Int[x_^m_*Coth[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  x^(m-1)*Log[Sinh[a+b*x+c*x^2]]/(2*c) -
  b/(2*c)*Int[x^(m-1)*Coth[a+b*x+c*x^2],x] -
  (m-1)/(2*c)*Int[x^(m-2)*Log[Sinh[a+b*x+c*x^2]],x] /;
FreeQ[{a,b,c},x] && GtQ[m,1] *)


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Tanh[a_.+b_.*x_+c_.*x_^2]^n_.,x_Symbol] :=
  Integral[(d+e*x)^m*Tanh[a+b*x+c*x^2]^n,x] /;
FreeQ[{a,b,c,d,e,m,n},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Coth[a_.+b_.*x_+c_.*x_^2]^n_.,x_Symbol] :=
  Integral[(d+e*x)^m*Coth[a+b*x+c*x^2]^n,x] /;
FreeQ[{a,b,c,d,e,m,n},x]



