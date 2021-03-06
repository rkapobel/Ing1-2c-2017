!classDefinition: #NumeroTest category: #'Numero-Exercise'!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:11'!
test01isCeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:12'!
test02isCeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:14'!
test05EnteroAddsWithEnteroCorrectly

	self assert: one + one equals: two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:18'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: two * two equals: four! !

!NumeroTest methodsFor: 'tests' stamp: 'rok 9/12/2017 16:42:40'!
test07EnteroDividesEnteroCorrectly
	
	| value |
	
	value :=  two / two.

	self assert: value equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:38'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: oneFifth + oneHalf equals: sevenTenths! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:52'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: oneFifth * twoFifth equals: twoTwentyfifth! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:56'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: oneHalf / oneFifth equals: fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:07'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: one + oneFifth equals: (Entero with: 6) / (Entero with: 5)! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:07'!
test12FraccionAddsEnteroCorrectly

	self assert: oneFifth + one equals: (Entero with: 6) / (Entero with: 5)! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:50'!
test13EnteroMultipliesFraccionCorrectly

	self assert: two * oneFifth equals: twoFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:52'!
test14FraccionMultipliesEnteroCorrectly

	self assert: oneFifth * two equals: twoFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:57'!
test15EnteroDividesFraccionCorrectly

	self assert: one / twoFifth equals: fiveHalfs  ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:59'!
test16FraccionDividesEnteroCorrectly

	self assert: twoFifth / five equals: twoTwentyfifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:40'!
test19AddingFraccionesCanReturnAnEntero

	self assert: oneHalf + oneHalf equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: (two/five) * (five/two) equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test21DividingFraccionesCanReturnAnEntero

	self assert: oneHalf / oneHalf equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:43'!
test22DividingEnterosCanReturnAFraccion

	self assert: two / four equals: oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:46'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:46'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !


!NumeroTest methodsFor: 'setup' stamp: 'HernanWilkinson 5/7/2016 20:56'!
setUp

	zero := Entero with: 0.
	one := Entero with: 1.
	two := Entero with: 2.
	four := Entero with: 4.
	five := Entero with: 5.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (Entero with: 25).
	fiveHalfs := five / two.
	! !


!classDefinition: #Numero category: #'Numero-Exercise'!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplier

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
+ anAdder

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !


!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: #'Numero-Exercise'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'rok 9/12/2017 00:40:55'!
canNotDivideByZeroErrorDescription
	^'No se puede dividir por cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'rok 9/12/2017 00:41:03'!
invalidNumberTypeErrorDescription
	^'Tipo de numero invalido'! !


!classDefinition: #Denominator category: #'Numero-Exercise'!
Numero subclass: #Denominator
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Denominator methodsFor: 'value' stamp: 'rok 9/10/2017 14:21:51'!
numberValue

	^value! !


!Denominator methodsFor: 'initialization' stamp: 'rok 9/12/2017 16:17:26'!
initializeWith: aValue 
	
	value := aValue! !


!Denominator methodsFor: 'arithmetic operations' stamp: 'rok 9/12/2017 16:46:01'!
// aDivisor 
	
	^self class withNumero: (value // aDivisor)! !

!Denominator methodsFor: 'arithmetic operations' stamp: 'rok 9/11/2017 23:47:34'!
greatestCommonDivisorWith: aNumerator

	^value greatestCommonDivisorWith: aNumerator numberValue! !


!Denominator methodsFor: 'testing' stamp: 'rok 9/12/2017 16:36:30'!
executeIfOne: aBlock

	^nil! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Denominator class' category: #'Numero-Exercise'!
Denominator class
	instanceVariableNames: ''!

!Denominator class methodsFor: 'initialization' stamp: 'rok 9/13/2017 10:53:21'!
withNumero: aNumber

	aNumber isZero ifTrue: [ self error: self canNotDivideByZeroErrorDescription ].
	aNumber isOne ifTrue: [^One new initialize] ifFalse: [^self new initializeWith: aNumber].! !


!classDefinition: #Entero category: #'Numero-Exercise'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Entero methodsFor: 'value' stamp: 'HernanWilkinson 5/7/2016 21:02'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:14'!
isOne
	
	^value = 1! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:12'!
isZero
	
	^value = 0! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!Entero methodsFor: 'initialization' stamp: 'rok 9/12/2017 16:17:09'!
initializeWith: aValue 
	
	value := aValue! !


!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:48:26'!
* aMultiplier 
	
	^aMultiplier multiplicarEntero: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:37:13'!
+ anAdder 

	^anAdder sumarEntero: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:48:18'!
/ aDivisor 

	^aDivisor dividirEntero: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 15:42:13'!
// aDivisor 

	"aDivisor por ahora solo puede ser Entero"	
	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 16:59:32'!
dividirEntero: aDividend

	^Fraccion with: (Numerator withNumero: aDividend) over: (Denominator withNumero: self).
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 16:59:41'!
dividirFraccion: aDividend

	^Fraccion with: (Numerator withNumero: (aDividend numerator)) over: (Denominator withNumero: (aDividend denominator * self)).! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 14:05:55'!
greatestCommonDivisorWith: aNumber 
	
	^aNumber greatestCommonDivisorWithEntero: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 14:01:48'!
greatestCommonDivisorWithEntero: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 14:11:59'!
greatestCommonDivisorWithFraccion: aFraccion 
	
	^self class with: ((self * aFraccion denominator) integerValue gcd: aFraccion numerator integerValue)! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:40:56'!
multiplicarEntero: aMultiplier

	^self class with: value * aMultiplier integerValue.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:41:27'!
multiplicarFraccion: aMultiplier

	^(self class with: value * aMultiplier numerator integerValue) / aMultiplier denominator.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:33:31'!
sumarEntero: anAdder

	^self class with: value + anAdder integerValue.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:35:23'!
sumarFraccion: anAdder

	^(self class with: (value * anAdder denominator integerValue + anAdder numerator integerValue)) / anAdder 	denominator.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: #'Numero-Exercise'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'rok 9/12/2017 16:26:42'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	
	^self new initializeWith: aValue! !


!classDefinition: #One category: #'Numero-Exercise'!
Entero subclass: #One
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!One methodsFor: 'testing' stamp: 'rok 9/13/2017 10:38:25'!
executeIfOne: aBlock

	aBlock value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'One class' category: #'Numero-Exercise'!
One class
	instanceVariableNames: ''!

!One class methodsFor: 'initialization' stamp: 'rok 9/13/2017 10:52:21'!
initialize

	super value: 1.! !


!classDefinition: #Fraccion category: #'Numero-Exercise'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'initialization' stamp: 'rok 9/10/2017 15:52:13'!
initializeWith: aNumerator over: aDenominator

	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:49:25'!
* aMultiplier 

	^aMultiplier multiplicarFraccion: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:49:16'!
+ anAdder 
	
	^anAdder sumarFraccion: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:49:49'!
/ aDivisor 
	
	^aDivisor dividirFraccion: self.
! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 15:41:51'!
// aDivisor 
	
	"aDivisor por ahora solo puede ser Entero"
	^Entero with: (numerator integerValue // ((denominator * aDivisor) integerValue))! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 23:03:14'!
dividirEntero: aDividend

	 ^(aDividend * denominator) / numerator.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 23:05:38'!
dividirFraccion: aDividend

	^(denominator * aDividend numerator) / (numerator * aDividend denominator).! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 14:08:42'!
greatestCommonDivisorWith: aNumber 
	
	^aNumber greatestCommonDivisorWithFraccion: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 14:11:43'!
greatestCommonDivisorWithEntero: anEntero 
	
	^self class with: ((anEntero * self denominator) integerValue gcd: self numerator integerValue)! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/10/2017 14:11:20'!
greatestCommonDivisorWithFraccion: aFraccion 

	^self class with: ((aFraccion numerator * self denominator) integerValue gcd: (aFraccion denominator * self numerator) integerValue)! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:42:06'!
multiplicarEntero: aMultiplier

	^(numerator * aMultiplier) / denominator.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:42:55'!
multiplicarFraccion: aMultiplier

	^(numerator * aMultiplier numerator) / (denominator * aMultiplier denominator).! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:38:22'!
sumarEntero: anAdder

	| newNumerator newDenominator |
		
	newNumerator := numerator + (denominator * anAdder).
	newDenominator := denominator * anAdder.

	^newNumerator / newDenominator ! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'rok 9/9/2017 22:39:00'!
sumarFraccion: anAdder

	| newNumerator newDenominator |

	newNumerator := (numerator * anAdder denominator) + (denominator * anAdder numerator).
	newDenominator := denominator * anAdder denominator.

	^newNumerator / newDenominator ! !


!Fraccion methodsFor: 'accessing' stamp: 'rok 9/10/2017 16:33:32'!
denominator

	^ denominator ! !

!Fraccion methodsFor: 'accessing' stamp: 'rok 9/10/2017 16:33:37'!
numerator

	^ numerator ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: #'Numero-Exercise'!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'rok 9/12/2017 16:47:24'!
with: aNumerator over: aDenominator

	| greatestCommonDivisor numerator denominator |
	
	(aNumerator isKindOf: Numerator) ifFalse: [ self error: 'El dividendo debe ser un Numerator' ].
	(aDenominator isKindOf: Denominator) ifFalse: [ self error: 'El divisor debe ser un Denominator' ].
	
	greatestCommonDivisor := aNumerator greatestCommonDivisorWith: aDenominator. 
	
	"aDividend y aDivisor pueden ser Entero o Fraccion pero ambos saben responder a //"
	numerator := aNumerator // greatestCommonDivisor.
	
	denominator := aDenominator // greatestCommonDivisor.
	
	denominator executeIfOne: [ ^numerator numberValue ].

	^self new initializeWith: numerator numberValue over: denominator numberValue
	! !


!classDefinition: #Numerator category: #'Numero-Exercise'!
Numero subclass: #Numerator
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Numerator methodsFor: 'value' stamp: 'rok 9/10/2017 14:22:14'!
numberValue

	^value! !


!Numerator methodsFor: 'initialization' stamp: 'rok 9/12/2017 16:17:43'!
initializeWith: aValue 
	
	value := aValue! !


!Numerator methodsFor: 'arithmetic operations' stamp: 'rok 9/12/2017 16:46:11'!
// aDivisor 
	
	^self class withNumero: (value // aDivisor)! !

!Numerator methodsFor: 'arithmetic operations' stamp: 'rok 9/11/2017 23:49:59'!
greatestCommonDivisorWith: aDenominator

	^value greatestCommonDivisorWith: aDenominator numberValue! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numerator class' category: #'Numero-Exercise'!
Numerator class
	instanceVariableNames: ''!

!Numerator class methodsFor: 'initialization' stamp: 'rok 9/12/2017 16:27:00'!
withNumero: aNumber

	aNumber isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	
	^self new initializeWith: aNumber.! !

One initialize!