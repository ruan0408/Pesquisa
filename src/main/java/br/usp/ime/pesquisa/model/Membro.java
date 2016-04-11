package br.usp.ime.pesquisa.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */
@Entity
@Table(name = "MEMBRO")
public class Membro implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    private int id;

    @Column(name = "codpes", unique = true)
    private int nusp;

    @Column(name = "nompes")
    private String nome;

    @ManyToMany(mappedBy = "membros")
    private List<LinhaPesquisa> linhasPesquisa = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getNusp() {
        return nusp;
    }

    public void setNusp(int nusp) {
        this.nusp = nusp;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Membro))
            return false;

        Membro that = (Membro) obj;
        if (this.nusp == that.nusp && this.nome.equals(that.nome))
            return true;

        return false;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + nome.hashCode();
        result = 31 * result + nusp;
        return result;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Membro{");
        sb.append("id=").append(id);
        sb.append(", nome='").append(nome).append('\'');
        sb.append(", nusp=").append(nusp);
        sb.append('}');
        return sb.toString();
    }
}
