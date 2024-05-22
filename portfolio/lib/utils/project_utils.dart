class Projects{
final String image;
final String title;
final String subtitle;
final String? link;

Projects({
  required this.image,
  required this.title,
  required this.subtitle,
  required this.link,

});
}

List<Projects> collegeProjects = [
  Projects(
    image: 'assets/projects/CodeQuests.png',
    title: 'Jogo CodeQuest',
    subtitle:
     'Um jogo com fins didáticos desenvolvido em Java realizado no primeiro semestre de 2023.',
    link: 'https://github.com/andremartinez501/CodeQuests',
    ),
  Projects(
    image: 'assets/projects/APAE-SCS.png', 
    title: 'Website APAE-SCS', 
    subtitle: 'Site desenvolvido em parceria com a APAE São Caetano do Sul e Instituto Mauá de Tecnologia no segundo semestre de 2023.', 
    link: 'https://github.com/andremartinez501/Website-ApaeSCS'),
  Projects(
    image: 'assets/projects/GestaodeSaude.png', 
    title: 'Aplicativo Sua Saúde', 
    subtitle: 'Aplicativo Mobile desenvolvido em parceria com a Instituição São Camilo e Instituto Mauá de Tecnologia no primeiro semestre de 2024.', 
    link: '*PROJETO NÃO CONCLUÍDO*')

];