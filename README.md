#                                                                Banco de Dados de um Hospital

## 🏥 Parte 1 - O Hospital Fundamental. 

Um pequeno hospital local busca desenvolver um novo sistema que atenda melhor às suas necessidades. Atualmente, parte da operação ainda se apoia em planilhas e arquivos antigos, mas espera-se que esses dados sejam transferidos para o novo sistema assim que ele estiver funcional. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.

![image](https://user-images.githubusercontent.com/125492978/234635322-7da8ef34-a556-4874-b20e-533f105d9220.png)

## 🏥 Parte 2 - Os Segredos do Hospital.

Após a primeira versão do projeto de banco de dados para o sistema hospitalar, notou-se a necessidade de expansão das funcionalidades, incluindo alguns requisitos essenciais a essa versão do software. As funcionalidades em questão são para o controle na internação de pacientes. Será necessário expandir o Modelo ER desenvolvido e montar o banco de dados, criando as tabelas para o início dos testes. As atualizações foram na criação das entidades de quartos, internação e enfermeiro.

![image](https://github.com/gussenise/Banco-de-Dados-Hospital/assets/125492978/f964fc35-fbad-4d1d-8ad1-4dcb2f211da8)

## 🏥 Parte 3 - O Prisioneiro dos Dados 

Com o banco de dados para o sistema hospitalar completamente montado, é necessário incluir dados para realizar os devidos testes e validar sua viabilidade quanto ao sistema. Nesta etapa, também é importante realizar a separação de alguns scripts iniciais para o banco, com os dados que serão necessários a um povoamento inicial do sistema.

Jogando nas regras que você criou: 
Crie scripts de povoamento das tabelas desenvolvidas na atividade anterior
Observe as seguintes atividades: 

Inclua ao menos dez médicos de diferentes especialidades.

Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).

Inclua ao menos 15 pacientes.

Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.

Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.

Criar entidade de relacionamento entre médico e especialidade. 

Criar Entidade de Relacionamento entre internação e enfermeiro. 

Arrumar a chave estrangeira do relacionamento entre convênio e médico.

Criar entidade entre internação e enfermeiro.

Colocar chaves estrangeira dentro da internação (Chaves Médico e Paciente).

Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.

Considerando que “a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria”, inclua ao menos esses três tipos com valores diferentes.

Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.

Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.

## 🏥 Parte 4 - A Ordem do Alterar. 

Hummm... 

Não... Não acabou... 
Um banco de dados pode sofrer alterações ao longo da sua concepção e do seu desenvolvimento. Nesse momento devemos nos preparar para atualizar nossas estratégias. 

Pensando no banco que já foi criado para o Projeto do Hospital, realize algumas alterações nas tabelas e nos dados usando comandos de atualização e exclusão:

Crie um script que adicione uma coluna “em_atividade” para os médicos, indicando se ele ainda está atuando no hospital ou não. 

Crie um script para atualizar ao menos dois médicos como inativos e os demais em atividade.



![image](https://github.com/gussenise/Banco-de-Dados-Hospital/assets/125492978/ff3baaec-82e2-4add-83ae-dd53176ea3fd)


![image](https://github.com/gussenise/Banco-de-Dados-Hospital/assets/125492978/1c84df06-a76a-49ba-8949-ff9c9455860a)


## 🏥 Parte 5 - As Relíquias dos Dados

Crie um script e nele inclua consultas que retornem:

Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.
Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.
Receituário completo da primeira consulta registrada com receituário associado.
Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).
Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.
Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.
Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.
Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.
Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.
Todos os médicos que tenham "Gabriel" no nome. 
Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.



