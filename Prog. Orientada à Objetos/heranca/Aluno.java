package heranca;

public class Aluno extends Pessoa {
        private String curso;
        private double mensalidade;

        public Aluno(int id, String nome, int idade, String curso, double mensalidade) {
            super(id, nome, idade);
            this.curso = curso;
            this.mensalidade = mensalidade;
        }

        public String getCurso() {
            return curso;
        }

        public void setCurso(String curso) {
            this.curso = curso;
        }

        public double getMensalidade() {
            return mensalidade;
        }

        public void setMensalidade(double mensalidade) {
            this.mensalidade = mensalidade;
        }
        
}
// Construtor

