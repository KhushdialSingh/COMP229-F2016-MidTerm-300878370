namespace COMP229_F2016_MidTerm_300878370.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TodoContext : DbContext
    {
        public TodoContext()
            : base("name=TodoConnection")
        {
        }

        public virtual DbSet<Todo> Todos { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Todo>()
                .Property(e => e.TodoDescription)
                .IsUnicode(false);

            /*
            modelBuilder.Entity<Table>()
                .Property(e => e.Team2)
                .IsUnicode(false); */
        }
    }
}
