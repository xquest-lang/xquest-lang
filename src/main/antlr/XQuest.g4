grammar XQuest;


question: QUESTION QID qbody ;
qbody: BB qdesc? qanswers? BE ;
qdesc: MDTEXT?;
qanswers: qanswer+ ;
qanswer: 'answer' BB MDTEXT? BE;



BB: '{' ;
BE: '}' ;
QID: [A-Z][A-Za-z0-9$]+ ;
QUESTION: 'question' ;
DESCRIPTION: 'description' ;
MDTEXT: '"""' .*? '"""' ;

WS: [ \t\r\n]+ -> skip;