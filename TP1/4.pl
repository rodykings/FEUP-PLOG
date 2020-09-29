/*peru,  frango,  salmão,  solha,  
cerveja,  vinho  verde,  vinho  maduro, 
 Ana,  António,  Barbara,  Bruno,  gosta,  casado, combina*/


 comida(peru).
 comida(frango).
 comida(salmao).
 comida(solha).

 bebida(cerveja).
 bebida(vinho_verde).
 bebida(vinho_maduro).

 casado(ana, antonio).
 casado(barbara, bruno).

 combina(cerveja, frango).
 combina(vinho_verde, salmao).
 combina(vinho_verde, solha).
 combina(vinho_maduro, peru).

 gosta(antonio, cerveja).
 gosta(antonio, salmao).
 gosta(ana, solha).
 gosta(ana, vinho_verde).
 gosta(barbara, peru).
 gosta(bruno, vinho_maduro).

 /*queries*/
% casado(ana, bruno), gosta(ana, vinho_verde), gosta(bruno, vinho_verde).
% combina(B, salmao).
% combina(vinho_verde, C).

