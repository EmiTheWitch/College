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
            // Exibir o menu e ler a escolha do usuário
            escreva("O frio da noite cai e a luz do luar se torna sua única fonte de visibilidade.\n")
            escreva("Você, como todos os outros que já haviam passado por ali, pensou que conseguiria voltar para casa a tempo.\n")
            escreva("Não importa o quanto caminhasse, parecia andar em círculos, até finalmente se deparar com uma espécie de placa de madeira antiga:\n")
            escreva("1. Tunel abandonado do metrô - parece um caminho sombrio\n")
            escreva("2. Lago da luz do luar\n")
            escreva("3. Bosque das criaturas\n")
            escreva("Com apenas mais um dollyinho e uma pilha restante na lanterna, o seu destino está em suas mãos.\n")
            escreva("Escolha um caminho (1, 2 ou 3): ")
            leia(opcao)

            // Laço para garantir que a opção do usuário é válida
            enquanto (opcao < 1 ou opcao > 3) {
                escreva("Essa direção parece bloqueada por vinhas venenosas. Você acha melhor retornar para um dos três.\n")
                escreva("Escolha um caminho (1, 2 ou 3): ")
                leia(opcao)
            }

            // Processar a escolha do usuário
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

            // Exibir o inventário e comandos
            escreva("Digite 'sair' para encerrar): ")
            leia(comando)

            escolha(comando) {
               caso "sair":
                    escreva("Você decide encerrar sua aventura por aqui.\n")
                    pare

                caso contrario:
                    escreva("Comando desconhecido.\n")
            }
        }
    }

funcao caminho_das_sombras() {
    escreva("O túnel abandonado do antigo metrô. Você desce aquele caminho sombrio e assustador, com toda sua coragem.\n")
    escreva("As estruturas do que parece um dia ter sido um complexo comercial começam a ficar levemente visíveis ao resto da luz da lua.\n")
    escreva("Você começa a passar pelo que parece ser uma espécie de catraca quebrada. A partir daí, será um caminho sem volta...\n")
    escreva("O túnel dos trens não proporciona qualquer tipo de visibilidade,\n")
    escreva("e você pensa que pode ser uma boa ideia usar sua última pilha para acender a sua lanterna. Acender lanterna? (sim/não):\n ")
    
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    leia(resposta)

    se (resposta == "sim") {
        caminho_das_sombras_lanterna()
    } senao se (resposta == "não") {
        caminho_das_sombras_sem_lanterna()
    } senao {
        escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
    }
}

funcao caminho_das_sombras_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    se (pilha > 0) {
        pilha = pilha - 1
        escreva("Sua lanterna está acesa, e sua última pilha se foi.\n")
        escreva("Agora você vê ao seu redor pichações, mesas quebradas, e imagina o que teria acontecido ali.\n")
        escreva("Para o seu azar, seguindo essa linha você deve demorar a noite toda para chegar em casa. Mas bom, pelo menos agora você sabe que vai.\n")
        escreva("Você anda, anda... E aquilo parece nunca acabar. Você começa a se sentir tonto e se lembra de que seu último dollyinho está bem ali.\n")
        escreva("Ceder à tentação e tomar o último dollyinho? (sim/não): ")
        leia(resposta)

        se (resposta == "sim") {
            tomou_o_dolly_com_lanterna_sombras()
        } senao se (resposta == "não") {
            nao_tomou_o_dolly_com_lanterna_sombras()
        } senao {
            escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
        }
    }
}

funcao caminho_das_sombras_sem_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    escreva("Você decide continuar no escuro e aos barulhos estranhos...\n")
    inteiro stealth = U.sorteia(1, 20)
    se (stealth < 15) {
        dollyinho = dollyinho - 1
    }
    escreva("Andando sem saber para onde ir ou como voltar, você se entrega à pura sorte e logo percebe que começou a sentir fome.\n")
    escreva("Com fome, você começa a contemplar se não deveria tomar seu último dollyinho.\n")
    escreva("Ceder à tentação e tomar dollyinho? (sim/não): ")
    leia(resposta)

    se (resposta == "sim") {
        tomou_o_dolly_sem_lanterna_sombras()
    } senao se (resposta == "não") {
        nao_tomou_o_dolly_sem_lanterna_sombras()
    } senao {
        escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
    }
}

funcao tomou_o_dolly_com_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    dollyinho = dollyinho - 1
    escreva("Você toma seu último dollyinho.\n")
    escreva("Começando a se preocupar, você começa a correr mais rápido para ver se chega a algum lugar.\n")
    escreva("Tendo gastado todos os seus recursos, você logo também fica sem pilha e se perde na escuridão sem fim...\n")
    // Final 1: Você toma o dolly com lanterna e se perde na escuridão.
}

funcao nao_tomou_o_dolly_com_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 0
    inteiro dollyinho = 1
    escreva("Você decide não tomar seu dollyinho e continuar seguindo.\n")
    escreva("Alguns segundos se passam e você logo escuta uma voz que te chama\n")
    escreva("Ei, meu fi! - chamava um senhor ao longe - Cê tem um dollyinho pra mim aí não?\n")
    escreva("O que aparenta ser um morador de rua se aproxima. Ele parece estar disposto a trocar seu dolly por te mostrar um atalho.\n")
    escreva("Cooperar com o senhor? (sim/não): ")
    leia(resposta)
    se (resposta == "sim") {
        inteiro stealth = U.sorteia(1, 20)
        se (stealth > 18) {
            dollyinho = dollyinho - 1
        }
        se (dollyinho == 0) {
            escreva("Algum tempo se passa e você percebe que sua pilha está acabando. Não é necessário muito esforço para perceber que o mendigo\n")
            escreva("acabou de te assaltar e simplesmente desapareceu! Sem dolly e pilha, você logo se perde na escuridão sem fim...\n")
            // Final 2: Você não toma o dolly com lanterna, coopera e é assaltado.
        } senao {
            escreva("Vocês cooperam e o poder da amizade tira vocês dali. Boa noite!\n")
            // Final 3: Você não toma o dolly com lanterna, coopera e consegue escapar.
        }
    } senao se (resposta == "não") {
        escreva("Você decide não cooperar com o morador de rua e continua seguindo.\n")
        escreva("Andando sem saber para onde ir ou como voltar, você se entrega à pura sorte e logo percebe que começou a sentir fome.\n")
        escreva("Com fome, você começa a contemplar se não deveria tomar seu último dollyinho.\n")
        escreva("Ceder à tentação e tomar dollyinho? (sim/não): ")
        leia(resposta)
        se (resposta == "sim" e dollyinho > 0) {
            escreva("Dividindo seus recursos, você demora, mas chega bem com segurança. Boa noite!\n")
        } senao se (resposta == "não" e dollyinho > 0) {
            escreva("Você decide não tomar seu dollyinho e continuar seguindo, mas percebe que economizou demais e ficou tonto e no escuro, voltando sem querer ao início...\n")
            // Final 4: Você não toma o dolly, não coopera, e se perde.
        } senao se (dollyinho == 0) {
            escreva("Você... Espera, cadê o seu dolly?? Você não conseguiu ver já que estava escuro, aí te assaltaram!\n")
            escreva("Com fome e sem comida para continuar, você logo também fica sem pilha e se perde na escuridão sem fim...\n")
            // Final 5: Você não toma o dolly, não coopera, é assaltado e se perde.
        } senao {
            escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
        }
    } senao {
        escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
    }
}

funcao tomou_o_dolly_sem_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    dollyinho = dollyinho - 1
    escreva("Você toma seu último dollyinho.\n")
    escreva("Dividindo seus recursos, você chega bem depois de um tempo. Boa noite!\n")
    // Final 6: Você toma o dolly sem lanterna e chega bem.
}

funcao nao_tomou_o_dolly_sem_lanterna_sombras() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    escreva("Você decide não tomar seu dollyinho e continuar seguindo, mas percebe que economizou demais e ficou tonto e no escuro, voltando sem querer ao início...\n")
    // Final 7: Você não toma o dolly sem lanterna e se perde.
}



funcao caminho_da_luz() {
    escreva("A lagoa enorme reflete a luz do luar quase como se tivesse sua própria lua.\n")
    escreva("O enorme jardim abandonado harmoniza bem com a elegância dos cisnes que nadavam alí.\n")
    escreva("Você sente que está adentrando alguma espécie de labirinto de arbustos, que ficam cada vez mais altos.\n")
    escreva("Apesar disso, ainda está claro. É natural ao andar por uma floresta que se leve uma lanterna\n")
    escreva("mas será que aquilo seria realmente necessário alí? Acender lanterna? (sim/não):\n ")
    
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    leia(resposta)

    se (resposta == "sim") {
        caminho_da_luz_lanterna()
    } senao se (resposta == "não") {
        caminho_da_luz_sem_lanterna()
    } senao {
        escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
    }
}

funcao caminho_da_luz_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    se (pilha > 0) {
        pilha = pilha - 1
        escreva("Sua lanterna está acesa, e sua última pilha se foi.\n")
        escreva("Agora você vê ao seu redor algo que não podia ver antes: uma espécie de grupo de gnomos que parecem ser\n")
        escreva(" invisiveis a olho nu! Eles te encaram enquanto se reagrupam. São cerca de cinco, do tamanho de chihuauas...\n")
        escreva("a partir de agora não tem mais para onde correr... Ou você luta ou oferece um acordo!\n")
        escreva("Partir para a luta? (sim/não): ")
        leia(resposta)

        se (resposta == "sim") {
          escreva("tomar seu ultimo dollyinho para adquirir superpoderes?(sim/não)")
          leia (resposta)
          se (resposta == "sim") {
            tomou_o_dolly_com_lanterna_luz()} senao {combate_fraco()}
        } senao se (resposta == "não") {
            negociar()
        } senao {
            escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
        }
    }
}

funcao caminho_da_luz_sem_lanterna() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    escreva("Você decide continuar, e nada de errado parece acontecer.\n")
    inteiro percepcao = U.sorteia(1, 20)
    se (percepcao < 18) {
        dollyinho = dollyinho - 1
    
    escreva("Você continua a caminhar e caminhar... Até que DE REPENTE...\n")
    escreva("Ah, espera, era só um inseto, Você continua e, - ESPERA, O QUE É ISSO??\n")
    escreva("Uma espécie de gnomo de cerca de 1.53 de altura e muito forte aparece, e ele parece ter acabado de tomar seu dollyinho!!")
    escreva("E ele parece estar com sua gangue!! Você jamais teria chance de lutar contra ele, e apenas aceita seu destino...")

    se (percepcao >18) {
      escreva("Você continua a caminhar e caminhar... Até que de repente sente que algo acabou de encostar em seus pés.")
      escreva("Um pequeno gnomo parece estar tentando assaltar seu dolly! e ele não parece estar sozinho...")
      escreva("Você se vê cercado, e em duas situações possíveis: brigar ou tentar negociar!")
      escreva("Tentar negociar? (sim/não)")
      leia(resposta)
    }

    se (resposta == "sim") {
        negociar()
    } senao se (resposta == "não") {
      escreva("Tomar seu dolly para ganhar superpoderes? (sim/não)")
      se (resposta == "sim") {tomou_o_dolly_com_lanterna_luz()} senao {combate_fraco()}
        combate()
    } senao {
        escreva("Resposta inválida. Por favor, digite 'sim' ou 'não'.\n")
    }
}}

funcao tomou_o_dolly_com_lanterna_luz() {
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    dollyinho = dollyinho - 1
    escreva("Você toma seu último dollyinho!\n")
    escreva("Seus músculos começam a se fortalecer e você se enche do poder do açúcar!\n")
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
            escreva("É um acerto crítico!!\n")
            escreva("Você derruba todos os gnomos!!\n")
            escreva("Batalha vencida! Você volta para casa em segurança...\n")
        } senao se (acerto > 12) {
            inteiro dano = U.sorteia(1, 8) + 3
            gnomos = gnomos - (dano / 2)  // Reduzir o número de gnomos baseado no dano

            se (gnomos > 0) {
                escreva("Você acerta! [" + acerto + "]\n")
                escreva("Você derruba " + (dano / 2) + " gnomos!! Restam " + gnomos + " gnomos.\n")
            } senao {
                escreva("Você derruba todos os gnomos!!\n")
                escreva("Batalha vencida! Você volta para casa em segurança...\n")
            }
        } senao {
            escreva("Você erra o ataque. A batalha continua...\n")
        }

        // Ataque dos gnomos
        se (gnomos > 0) {
            inteiro ataqueGnomo = U.sorteia(1, 20)

            se (ataqueGnomo > defesaJogador) {
                inteiro danoGnomo = U.sorteia(1, 6)  // Dano dos gnomos
                vidaJogador = vidaJogador - danoGnomo
                escreva("Os gnomos atacam e causam " + danoGnomo + " de dano! Sua vida agora é " + vidaJogador + ".\n")
            } senao {
                escreva("Você desvia dos ataques dos gnomos!\n")
            }
        }

        se (vidaJogador <= 0) {
            escreva("Você foi derrotado pelos gnomos...\n")
        }
    }

    se (vidaJogador > 0 e gnomos <= 0) {
        escreva("Parabéns, você venceu a batalha!\n")
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
            escreva("É um acerto crítico!!\n")
            escreva("Você derruba todos os gnomos!!\n")
            escreva("Batalha vencida! Você volta para casa em segurança...\n")
        } senao se (acerto > 12) {
            inteiro dano = U.sorteia(1, 8) + 3
            gnomos = gnomos - (dano / 2)  // Reduzir o número de gnomos baseado no dano

            se (gnomos > 0) {
                escreva("Você acerta! [" + acerto + "]\n")
                escreva("Você derruba " + (dano / 2) + " gnomos!! Restam " + gnomos + " gnomos.\n")
            } senao {
                escreva("Você derruba todos os gnomos!!\n")
                escreva("Batalha vencida! Você volta para casa em segurança...\n")
            }
        } senao {
            escreva("Você erra o ataque. A batalha continua...\n")
        }

        // Ataque dos gnomos
        se (gnomos > 0) {
            inteiro ataqueGnomo = U.sorteia(1, 20)

            se (ataqueGnomo > defesaJogador) {
                inteiro danoGnomo = U.sorteia(1, 6)  // Dano dos gnomos
                vidaJogador = vidaJogador - danoGnomo
                escreva("Os gnomos atacam e causam " + danoGnomo + " de dano! Sua vida agora é " + vidaJogador + ".\n")
            } senao {
                escreva("Você desvia dos ataques dos gnomos!\n")
            }
        }

        se (vidaJogador <= 0) {
            escreva("Você foi derrotado pelos gnomos...\n")
        }
    }

    se (vidaJogador > 0 e gnomos <= 0) {
        escreva("Parabéns, você venceu a batalha!\n")
    }
}

funcao negociar() {
    cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
    inteiro resultado
    escreva("Você decide tentar negociar com os gnomos!\n")
    escreva("Mas você... Não sabe o idioma dos Gnomos?\n")
    escreva("Tudo bem, você tem algumas opções:\n")
    escreva("1. Tentar falar: 'tudo bem, eu já fui como você'\n")
    escreva("2. Entregar o dolly e rezar.\n")
    leia(resultado)

    escolha(resultado) {
        caso 1: 
            inteiro tentativa1 = U.sorteia(1,20)+2
            se (tentativa1>12){
              escreva("Eles parecem vonvencidos pelo seu discurso!")
              escreva("Os gnomos parecem começar a tentar falar seu idioma, e eventualmente te levam para casa...")
            } senao {
              escreva("Eles te atacam de repente!")
              combate_fraco()
            }
            pare

        caso 2:
              escreva("Eles parecem lisongeados pela sua oferenda!")
              escreva("Os gnomos parecem começar a tentar falar seu idioma, e eventualmente te levam para casa...")
           
            
            pare
            
                caso contrario:
                    escreva("Comando desconhecido.\n")}
    }

funcao caminho_das_criaturas() {
  cadeia resposta
    inteiro pilha = 1
    inteiro dollyinho = 1
  escreva("O bosque das criaturas... Uma bela e reconfortante floresta densa, com um caminho de pedras\n")
  escreva("Os vagalumes e cogumelos brilhantes no local não emitem muita luz, mas você consegue enxergar minimamente\n")
escreva("Mas afinal, que criaturas no nome do lugar?\n Você não via nada alem de esquilos e insetos alí\n")
escreva("O caminho de pedras beirava um pequeno riacho, deixando o chão escorregadio e cheio de obstáculos.\n")
escreva("Você se encontra em duas situações: caminhar devagar para evitar cair ou acender sua lanterna para ver melhor\n")
escreva("Acender lanterna?(sim/não)")
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








