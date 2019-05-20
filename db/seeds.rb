# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campu.create(nome: 'UFC - Russas', cep: '62900-000', cidade: 'Russas', estado: 'CE')
Curso.create(nome: 'Engenharia de Software', campu_id: 1, carga_atividades_complementares: 288.0)
Curso.create(nome: 'Ciências da Computação', campu_id: 1)
Curso.create(nome: 'Engenharia Mecânica', campu_id: 1)
Curso.create(nome: 'Engenharia de Produção', campu_id: 1)
Curso.create(nome: 'Engenharia Civíl', campu_id: 1)

Categoria.create(nome: 'Atividades de iniciação à docência, à pesquisa e/ou à extensão', limite_carga_horaria: 96.0, curso_id: 1, numero: 1)
Categoria.create(nome: 'Atividades artístico culturais e esportivas', limite_carga_horaria: 80.0, curso_id: 1, numero: 2)
Categoria.create(nome: 'Atividades de participação e/ou organização de eventos', limite_carga_horaria: 32.0, curso_id: 1, numero: 3)
Categoria.create(nome: 'Experiências ligadas à formação profissional e/ou correlatas', limite_carga_horaria: 64.0, curso_id: 1, numero: 4)
Categoria.create(nome: 'Produção Técnica e/ou Científica', limite_carga_horaria: 96.0, curso_id: 1, numero: 5)
Categoria.create(nome: 'Vivências de gestão', limite_carga_horaria: 48.0, curso_id: 1, numero: 6)
Categoria.create(nome: 'Outras atividades', limite_carga_horaria: 48.0, curso_id: 1, numero: 7)

Atividade.create(categoria_id: 1, nome: 'Iniciação Científica com bolsa PIBIC, ITI ou bolsa ligada a projetos ou grupos de pesquisa aprovados na unidade acadêmica')
Atividade.create(categoria_id: 1, nome: 'Participação do grupo PET')
Atividade.create(categoria_id: 1, nome: 'Monitoria com bolsa')
Atividade.create(categoria_id: 1, nome: 'Participação como voluntário nas atividades da categoria')
Atividade.create(categoria_id: 1, nome: 'Participação em bolsa de Iniciação Acadêmica')
Atividade.create(categoria_id: 1, nome: 'Participação em bolsa de Informática')
Atividade.create(categoria_id: 1, nome: 'Cursos ministrados')

Atividade.create(categoria_id: 2, nome: 'Ensaio/treino de participação em grupo de teatro, de dança, coral, literário, musical ou esportivo')
Atividade.create(categoria_id: 2, nome: 'Evento/apresentação/torneio de grupo de teatro, de dança, coral, literário, musical ou esportivo')
Atividade.create(categoria_id: 2, nome: 'Torneio/campeonato nacional ou internacional de e-sports, jogos eletrônicos, jogos de cartas ou de tabuleiro')

Atividade.create(categoria_id: 3, nome: 'Participação em congressos internacionais')
Atividade.create(categoria_id: 3, nome: 'Participação em congressos nacionais')
Atividade.create(categoria_id: 3, nome: 'Participação em seminários, colóquios e palestras avaliados pelo Colegiado do curso como contribuintes para um desenvolvimento integral do profissional, excluídas as atividades internas de grupos de pesquisas')
Atividade.create(categoria_id: 3, nome: ' Participação como ouvinte em defesas de Trabalho de Conclusão de Curso')
Atividade.create(categoria_id: 3, nome: 'Apresentação de artigo em congresso internacional')
Atividade.create(categoria_id: 3, nome: 'Apresentação de artigo em congresso nacional')
Atividade.create(categoria_id: 3, nome: 'Organização de eventos científicos como presidente ou membros da diretoria')
Atividade.create(categoria_id: 3, nome: 'Organização de eventos regulares do Campus de Russas como coordenador ou membro da comissão do evento')
Atividade.create(categoria_id: 3, nome: 'Participação como monitor (ou auxiliar) em eventos')
Atividade.create(categoria_id: 3, nome: 'Participação em maratona de programação Competição local')
Atividade.create(categoria_id: 3, nome: 'Participação em maratona de programação Seletiva regional para a maratona nacional ou internacional')
Atividade.create(categoria_id: 3, nome: 'Participação em maratona de programação Maratona de programação nacional')
Atividade.create(categoria_id: 3, nome: 'Participação em maratona de programação Maratona de programação Internacional')


Atividade.create(categoria_id: 4, nome: 'Estágio Não-Curricular')
Atividade.create(categoria_id: 4, nome: 'Participação na empresa júnior')
Atividade.create(categoria_id: 4, nome: 'Cursos e minicursos correlatos')
Atividade.create(categoria_id: 4, nome: 'Participação em Visitas técnicas')

Atividade.create(categoria_id: 5, nome: 'Publicação de artigo em revista internacional')
Atividade.create(categoria_id: 5, nome: 'Publicação de artigo em revista nacional')
Atividade.create(categoria_id: 5, nome: 'Publicação de artigo completo em congresso internacional')
Atividade.create(categoria_id: 5, nome: 'Publicação de artigo completo em congresso nacional')
Atividade.create(categoria_id: 5, nome: 'Publicação de artigo resumido em congresso internacional')
Atividade.create(categoria_id: 5, nome: 'Publicação de artigo resumido em congresso nacional')
Atividade.create(categoria_id: 5, nome: 'Publicação de resumos em encontros universitários')
Atividade.create(categoria_id: 5, nome: 'Patente ou registro de software')

Atividade.create(categoria_id: 6, nome: 'Participação na diretoria de empresa júnior, como presidente e vice-presidente ou diretor')
Atividade.create(categoria_id: 6, nome: 'Participação na diretoria do centro acadêmico do curso')
Atividade.create(categoria_id: 6, nome: 'Participação na condição de representante estudantil no colegiado de coordenação de curso, departamental e conselho de centro')
Atividade.create(categoria_id: 6, nome: 'Participação na condição de representante estudantil em comissão permanente ou temporária')

Atividade.create(categoria_id: 7, nome: 'Participação em atividade de voluntariado em prol da sociedade: 1 hora por 2 horas de atividades')
Atividade.create(categoria_id: 7, nome: 'Curso de língua estrangeira')
Atividade.create(categoria_id: 7, nome: 'Participação em grupos de estudo, sob a responsabilidade de um professor do Campus ou de ciência da Coordenação de curso')
Atividade.create(categoria_id: 7, nome: 'Participação em células de estudo do Programa de Aprendizagem Cooperativa em Células Estudantis')
Atividade.create(categoria_id: 7, nome: 'Participação em palestras e/ou cursos sobre temas importantes para a sociedade, como acessibilidade, TI verde, dengue e outras doenças transmitidas pelo Aedes Aegypti, educação ambiental, direitos humanos, relações étnico-raciais e africanidades, dentre outros')