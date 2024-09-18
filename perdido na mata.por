programa {
  inclua biblioteca Util --> U
    inteiro pilha = 1
    inteiro dollyinho = 1

    funcao inicio() {
        inteiro opcao
        cadeia comando
        cadeia resposta

        // Loop principal do programa
        enquanto (verdadeiro) {
            // Exibir o menu e ler a escolha do usu�rio
            escreva("O frio da noite cai e a luz do luar se torna sua �nica fonte de visibilidade.\n")
            escreva("Voc�, como todos os outros que j� haviam passado por ali, pensou que conseguiria voltar para casa a tempo.\n")
            escreva("N�o importa o quanto caminhasse, parecia andar em c�rculos, at� finalmente se deparar com uma esp�cie de placa de madeira antiga:\n")
            escreva("1. Tunel abandonado do metr� - parece um caminho sombrio\n")
            escreva("2. Lago da luz do luar\n")
            escreva("3. Bosque das criaturas\n")
            escreva("Com apenas mais um dollyinho e uma pilha restante na lanterna, o seu destino est� em suas m�os.\n")
            escreva("Escolha um caminho (1, 2 ou 3): ")
            leia(opcao)

            // La�o para garantir que a op��o do usu�rio � v�lida
            enquanto (opcao < 1 ou opcao > 3) {
                escreva("Essa dire��o parece bloqueada por vinhas venenosas. Voc� acha melhor retornar para um dos tr�s.\n")
                escreva("Escolha um caminho (1, 2 ou 3): ")
                leia(opcao)
            }

            // Processar a escolha do usu�rio
            escolha(opcao) {
                caso 1: 
                    caminho_das_sombras()
                    pare

                caso 2:
                    caminho_da_luz()
                    pare

                caso 3:
                    caminho_das_criaturas()
                    pare
            }

            // Exibir o invent�rio e comandos
            escreva("Digite 'sair' para encerrar): ")
            leia(comando)

            escolha(comando) {
               caso "sair":
                    escreva("Voc� decide encerrar sua aventura por aqui.\n")
                    pare

                caso contrario:
                    escreva("Comando desconhecido.\n")
            }
        }
    }

funcao caminho_das_sombras() {
    escreva("O t�nel abandonado do antigo metr�. Voc� desce aquele caminho sombrio e assustador, com toda sua coragem.\n")
    escreva("As estruturas do que parece um dia ter sido um complexo comercial come�am a ficar levemente vis�veis ao resto da luz da lua.\n")
    escreva("Voc� come�a a passar pelo que parece ser uma esp�cie de catraca quebrada. A partir da�, ser� um caminho sem volta...\n")
    escreva("O t�nel dos trens n�o proporciona qualquer tipo de visibilidade,\n")
    escreva("e voc� pensa que pode ser uma boa ideia usar sua �ltima pilha para acender a sua lanterna. Acender lanterna? (sim/n�o):\n ")
    
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    leia(resposta)

    se (resposta == "sim") {
        caminho_das_sombras_lanterna()
    } senao se (resposta == "n�o") {
        caminho_das_sombras_sem_lanterna()
    } senao {
        escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
    }
}

funcao caminho_das_sombras_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    se (pilha > 0) {
        pilha = pilha - 1
        escreva("Sua lanterna est� acesa, e sua �ltima pilha se foi.\n")
        escreva("Agora voc� v� ao seu redor picha��es, mesas quebradas, e imagina o que teria acontecido ali.\n")
        escreva("Para o seu azar, seguindo essa linha voc� deve demorar a noite toda para chegar em casa. Mas bom, pelo menos agora voc� sabe que vai.\n")
        escreva("Voc� anda, anda... E aquilo parece nunca acabar. Voc� come�a a se sentir tonto e se lembra de que seu �ltimo dollyinho est� bem ali.\n")
        escreva("Ceder � tenta��o e tomar o �ltimo dollyinho? (sim/n�o): ")
        leia(resposta)

        se (resposta == "sim") {
            tomou_o_dolly_com_lanterna_sombras()
        } senao se (resposta == "n�o") {
            nao_tomou_o_dolly_com_lanterna_sombras()
        } senao {
            escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
        }
    }
}

funcao caminho_das_sombras_sem_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    escreva("Voc� decide continuar no escuro e aos barulhos estranhos...\n")
    inteiro stealth = U.sorteia(1, 20)
    se (stealth < 15) {
        dollyinho = dollyinho - 1
    }
    escreva("Andando sem saber para onde ir ou como voltar, voc� se entrega � pura sorte e logo percebe que come�ou a sentir fome.\n")
    escreva("Com fome, voc� come�a a contemplar se n�o deveria tomar seu �ltimo dollyinho.\n")
    escreva("Ceder � tenta��o e tomar dollyinho? (sim/n�o): ")
    leia(resposta)

    se (resposta == "sim") {
        tomou_o_dolly_sem_lanterna_sombras()
    } senao se (resposta == "n�o") {
        nao_tomou_o_dolly_sem_lanterna_sombras()
    } senao {
        escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
    }
}

funcao tomou_o_dolly_com_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    dollyinho = dollyinho - 1
    escreva("Voc� toma seu �ltimo dollyinho.\n")
    escreva("Come�ando a se preocupar, voc� come�a a correr mais r�pido para ver se chega a algum lugar.\n")
    escreva("Tendo gastado todos os seus recursos, voc� logo tamb�m fica sem pilha e se perde na escurid�o sem fim...\n")
    // Final 1: Voc� toma o dolly com lanterna e se perde na escurid�o.
}

funcao nao_tomou_o_dolly_com_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 0
    inteiro dollyinho = 1
    escreva("Voc� decide n�o tomar seu dollyinho e continuar seguindo.\n")
    escreva("Alguns segundos se passam e voc� logo escuta uma voz que te chama\n")
    escreva("Ei, meu fi! - chamava um senhor ao longe - C� tem um dollyinho pra mim a� n�o?\n")
    escreva("O que aparenta ser um morador de rua se aproxima. Ele parece estar disposto a trocar seu dolly por te mostrar um atalho.\n")
    escreva("Cooperar com o senhor? (sim/n�o): ")
    leia(resposta)
    se (resposta == "sim") {
        inteiro stealth = U.sorteia(1, 20)
        se (stealth > 18) {
            dollyinho = dollyinho - 1
        }
        se (dollyinho == 0) {
            escreva("Algum tempo se passa e voc� percebe que sua pilha est� acabando. N�o � necess�rio muito esfor�o para perceber que o mendigo\n")
            escreva("acabou de te assaltar e simplesmente desapareceu! Sem dolly e pilha, voc� logo se perde na escurid�o sem fim...\n")
            // Final 2: Voc� n�o toma o dolly com lanterna, coopera e � assaltado.
        } senao {
            escreva("Voc�s cooperam e o poder da amizade tira voc�s dali. Boa noite!\n")
            // Final 3: Voc� n�o toma o dolly com lanterna, coopera e consegue escapar.
        }
    } senao se (resposta == "n�o") {
        escreva("Voc� decide n�o cooperar com o morador de rua e continua seguindo.\n")
        escreva("Andando sem saber para onde ir ou como voltar, voc� se entrega � pura sorte e logo percebe que come�ou a sentir fome.\n")
        escreva("Com fome, voc� come�a a contemplar se n�o deveria tomar seu �ltimo dollyinho.\n")
        escreva("Ceder � tenta��o e tomar dollyinho? (sim/n�o): ")
        leia(resposta)
        se (resposta == "sim" e dollyinho > 0) {
            escreva("Dividindo seus recursos, voc� demora, mas chega bem com seguran�a. Boa noite!\n")
        } senao se (resposta == "n�o" e dollyinho > 0) {
            escreva("Voc� decide n�o tomar seu dollyinho e continuar seguindo, mas percebe que economizou demais e ficou tonto e no escuro, voltando sem querer ao in�cio...\n")
            // Final 4: Voc� n�o toma o dolly, n�o coopera, e se perde.
        } senao se (dollyinho == 0) {
            escreva("Voc�... Espera, cad� o seu dolly?? Voc� n�o conseguiu ver j� que estava escuro, a� te assaltaram!\n")
            escreva("Com fome e sem comida para continuar, voc� logo tamb�m fica sem pilha e se perde na escurid�o sem fim...\n")
            // Final 5: Voc� n�o toma o dolly, n�o coopera, � assaltado e se perde.
        } senao {
            escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
        }
    } senao {
        escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
    }
}

funcao tomou_o_dolly_sem_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    dollyinho = dollyinho - 1
    escreva("Voc� toma seu �ltimo dollyinho.\n")
    escreva("Dividindo seus recursos, voc� chega bem depois de um tempo. Boa noite!\n")
    // Final 6: Voc� toma o dolly sem lanterna e chega bem.
}

funcao nao_tomou_o_dolly_sem_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    escreva("Voc� decide n�o tomar seu dollyinho e continuar seguindo, mas percebe que economizou demais e ficou tonto e no escuro, voltando sem querer ao in�cio...\n")
    // Final 7: Voc� n�o toma o dolly sem lanterna e se perde.
}



funcao caminho_da_luz() {
    escreva("A lagoa enorme reflete a luz do luar quase como se tivesse sua pr�pria lua.\n")
    escreva("O enorme jardim abandonado harmoniza bem com a eleg�ncia dos cisnes que nadavam al�.\n")
    escreva("Voc� sente que est� adentrando alguma esp�cie de labirinto de arbustos, que ficam cada vez mais altos.\n")
    escreva("Apesar disso, ainda est� claro. � natural ao andar por uma floresta que se leve uma lanterna\n")
    escreva("mas ser� que aquilo seria realmente necess�rio al�? Acender lanterna? (sim/n�o):\n ")
    
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    leia(resposta)

    se (resposta == "sim") {
        caminho_da_luz_lanterna()
    } senao se (resposta == "n�o") {
        caminho_da_luz_sem_lanterna()
    } senao {
        escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
    }
}

funcao caminho_da_luz_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    se (pilha > 0) {
        pilha = pilha - 1
        escreva("Sua lanterna est� acesa, e sua �ltima pilha se foi.\n")
        escreva("Agora voc� v� ao seu redor algo que n�o podia ver antes: uma esp�cie de grupo de gnomos que parecem ser\n")
        escreva(" invisiveis a olho nu! Eles te encaram enquanto se reagrupam. S�o cerca de cinco, do tamanho de chihuauas...\n")
        escreva("a partir de agora n�o tem mais para onde correr... Ou voc� luta ou oferece um acordo!\n")
        escreva("Partir para a luta? (sim/n�o): ")
        leia(resposta)

        se (resposta == "sim") {
          escreva("tomar seu ultimo dollyinho para adquirir superpoderes?(sim/n�o)")
          leia (resposta)
          se (resposta == "sim") {
            tomou_o_dolly_com_lanterna_luz()} senao {combate_fraco()}
        } senao se (resposta == "n�o") {
            negociar()
        } senao {
            escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
        }
    }
}

funcao caminho_da_luz_sem_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    escreva("Voc� decide continuar, e nada de errado parece acontecer.\n")
    inteiro percepcao = U.sorteia(1, 20)
    se (percepcao < 18) {
        dollyinho = dollyinho - 1
    
    escreva("Voc� continua a caminhar e caminhar... At� que DE REPENTE...\n")
    escreva("Ah, espera, era s� um inseto, Voc� continua e, - ESPERA, O QUE � ISSO??\n")
    escreva("Uma esp�cie de gnomo de cerca de 1.53 de altura e muito forte aparece, e ele parece ter acabado de tomar seu dollyinho!!")
    escreva("E ele parece estar com sua gangue!! Voc� jamais teria chance de lutar contra ele, e apenas aceita seu destino...")

    se (percepcao >18) {
      escreva("Voc� continua a caminhar e caminhar... At� que de repente sente que algo acabou de encostar em seus p�s.")
      escreva("Um pequeno gnomo parece estar tentando assaltar seu dolly! e ele n�o parece estar sozinho...")
      escreva("Voc� se v� cercado, e em duas situa��es poss�veis: brigar ou tentar negociar!")
      escreva("Tentar negociar? (sim/n�o)")
      leia(resposta)
    }

    se (resposta == "sim") {
        negociar()
    } senao se (resposta == "n�o") {
      escreva("Tomar seu dolly para ganhar superpoderes? (sim/n�o)")
      se (resposta == "sim") {tomou_o_dolly_com_lanterna_luz()} senao {combate_fraco()}
        combate()
    } senao {
        escreva("Resposta inv�lida. Por favor, digite 'sim' ou 'n�o'.\n")
    }
}}

funcao tomou_o_dolly_com_lanterna_luz() {
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    dollyinho = dollyinho - 1
    escreva("Voc� toma seu �ltimo dollyinho!\n")
    escreva("Seus m�sculos come�am a se fortalecer e voc� se enche do poder do a��car!\n")
    escreva("+5 acerto! +3 dano!\n")
    combate()

}

funcao combate() {
    inteiro gnomos = 5
    inteiro vidaJogador = 15
    inteiro defesaJogador = 12

    enquanto (gnomos > 0 e vidaJogador > 0) {
        inteiro acerto = U.sorteia(1, 20) + 5

        // Ataque do jogador
        se (acerto == 20) {
            gnomos = 0
            escreva("� um acerto cr�tico!!\n")
            escreva("Voc� derruba todos os gnomos!!\n")
            escreva("Batalha vencida! Voc� volta para casa em seguran�a...\n")
        } senao se (acerto > 12) {
            inteiro dano = U.sorteia(1, 8) + 3
            gnomos = gnomos - (dano / 2)  // Reduzir o n�mero de gnomos baseado no dano

            se (gnomos > 0) {
                escreva("Voc� acerta! [" + acerto + "]\n")
                escreva("Voc� derruba " + (dano / 2) + " gnomos!! Restam " + gnomos + " gnomos.\n")
            } senao {
                escreva("Voc� derruba todos os gnomos!!\n")
                escreva("Batalha vencida! Voc� volta para casa em seguran�a...\n")
            }
        } senao {
            escreva("Voc� erra o ataque. A batalha continua...\n")
        }

        // Ataque dos gnomos
        se (gnomos > 0) {
            inteiro ataqueGnomo = U.sorteia(1, 20)

            se (ataqueGnomo > defesaJogador) {
                inteiro danoGnomo = U.sorteia(1, 6)  // Dano dos gnomos
                vidaJogador = vidaJogador - danoGnomo
                escreva("Os gnomos atacam e causam " + danoGnomo + " de dano! Sua vida agora � " + vidaJogador + ".\n")
            } senao {
                escreva("Voc� desvia dos ataques dos gnomos!\n")
            }
        }

        se (vidaJogador <= 0) {
            escreva("Voc� foi derrotado pelos gnomos...\n")
        }
    }

    se (vidaJogador > 0 e gnomos <= 0) {
        escreva("Parab�ns, voc� venceu a batalha!\n")
    }
}

funcao combate_fraco() {
    inteiro gnomos = 5
    inteiro vidaJogador = 10
    inteiro defesaJogador = 12

    enquanto (gnomos > 0 e vidaJogador > 0) {
        inteiro acerto = U.sorteia(1, 20) + 2

        // Ataque do jogador
        se (acerto == 20) {
            gnomos = 0
            escreva("� um acerto cr�tico!!\n")
            escreva("Voc� derruba todos os gnomos!!\n")
            escreva("Batalha vencida! Voc� volta para casa em seguran�a...\n")
        } senao se (acerto > 12) {
            inteiro dano = U.sorteia(1, 8) + 3
            gnomos = gnomos - (dano / 2)  // Reduzir o n�mero de gnomos baseado no dano

            se (gnomos > 0) {
                escreva("Voc� acerta! [" + acerto + "]\n")
                escreva("Voc� derruba " + (dano / 2) + " gnomos!! Restam " + gnomos + " gnomos.\n")
            } senao {
                escreva("Voc� derruba todos os gnomos!!\n")
                escreva("Batalha vencida! Voc� volta para casa em seguran�a...\n")
            }
        } senao {
            escreva("Voc� erra o ataque. A batalha continua...\n")
        }

        // Ataque dos gnomos
        se (gnomos > 0) {
            inteiro ataqueGnomo = U.sorteia(1, 20)

            se (ataqueGnomo > defesaJogador) {
                inteiro danoGnomo = U.sorteia(1, 6)  // Dano dos gnomos
                vidaJogador = vidaJogador - danoGnomo
                escreva("Os gnomos atacam e causam " + danoGnomo + " de dano! Sua vida agora � " + vidaJogador + ".\n")
            } senao {
                escreva("Voc� desvia dos ataques dos gnomos!\n")
            }
        }

        se (vidaJogador <= 0) {
            escreva("Voc� foi derrotado pelos gnomos...\n")
        }
    }

    se (vidaJogador > 0 e gnomos <= 0) {
        escreva("Parab�ns, voc� venceu a batalha!\n")
    }
}

funcao negociar() {
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    inteiro resultado
    escreva("Voc� decide tentar negociar com os gnomos!\n")
    escreva("Mas voc�... N�o sabe o idioma dos Gnomos?\n")
    escreva("Tudo bem, voc� tem algumas op��es:\n")
    escreva("1. Tentar falar: 'tudo bem, eu j� fui como voc�'\n")
    escreva("2. Entregar o dolly e rezar.\n")
    leia(resultado)

    escolha(resultado) {
        caso 1: 
            inteiro tentativa1 = U.sorteia(1,20)+2
            se (tentativa1>12){
              escreva("Eles parecem vonvencidos pelo seu discurso!")
              escreva("Os gnomos parecem come�ar a tentar falar seu idioma, e eventualmente te levam para casa...")
            } senao {
              escreva("Eles te atacam de repente!")
              combate_fraco()
            }
            pare

        caso 2:
              escreva("Eles parecem lisongeados pela sua oferenda!")
              escreva("Os gnomos parecem come�ar a tentar falar seu idioma, e eventualmente te levam para casa...")
           
            
            pare
            
                caso contrario:
                    escreva("Comando desconhecido.\n")}
    }

funcao caminho_das_criaturas() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
  escreva("O bosque das criaturas... Uma bela e reconfortante floresta densa, com um caminho de pedras\n")
  escreva("Os vagalumes e cogumelos brilhantes no local n�o emitem muita luz, mas voc� consegue enxergar minimamente\n")
escreva("Mas afinal, que criaturas no nome do lugar?\n Voc� n�o via nada alem de esquilos e insetos al�\n")
escreva("O caminho de pedras beirava um pequeno riacho, deixando o ch�o escorregadio e cheio de obst�culos.\n")
escreva("Voc� se encontra em duas situa��es: caminhar devagar para evitar cair ou acender sua lanterna para ver melhor\n")
escreva("Acender lanterna?(sim/n�o)")
leia(resposta)
se(resposta == "sim") {
criatuas_lanrerna()} senao {
criatuas_sem_lanterna()
}}

funcao criaturas_lanterna(){
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1}

funcao criaturas_sem_lanterna(){
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1}

    }








