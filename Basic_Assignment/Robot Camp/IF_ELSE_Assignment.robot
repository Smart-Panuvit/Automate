*** settings ***
Library		SeleniumLibrary


*** Test cases ***
Test print text
	Score  59

*** Keywords ***
Score
	[Arguments]		${text}
	IF	${text}>=90
		Log To Console	A
	ELSE IF	${text}>=80
		Log To Console	B
	ELSE IF	${text}>=70
		Log To Console	C
	ELSE IF	${text}>=60
		Log To Console	D
	ELSE
		Log To Console	F
	END