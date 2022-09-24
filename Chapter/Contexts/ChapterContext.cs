using Chapter.Models;
using Microsoft.EntityFrameworkCore;

namespace Chapter.Contexts
{
    public class ChapterContext : DbContext
    {
        public ChapterContext() { }

        public ChapterContext(DbContextOptions<ChapterContext> options) : base(options) { }

        //vamos utilizar esse método para configurar o banco de dados

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if(!optionsBuilder.IsConfigured)
            {//cada provedor tem sua sintaxe para especificação:path   ;    nome do DB          ;    segurança                     
                optionsBuilder.UseSqlServer("Data Source=CL\\SQLEXPRESS; initial catalog=Chapter; Integrated Security=true");
            }
        }

        //dbset representa as entidades q serão utilizadar nas operações de leitura, criação, atualização exclusão
        public DbSet<Livro> Livros { get; set; }
    }
}
