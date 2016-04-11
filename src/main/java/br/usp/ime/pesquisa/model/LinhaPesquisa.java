package br.usp.ime.pesquisa.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */
@Entity
@Table(name = "LINHAPESQUISA")
public class LinhaPesquisa implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    private int id;

    private String nome;
    private String descricao;

    @ManyToOne
    private Area area;

    @ManyToMany
    @JoinTable(
            name = "LINHAPESQUISA_MEMBRO",
            joinColumns = @JoinColumn(name = "linhapesquisa_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "membro_id", referencedColumnName = "id")
    )
    private List<Membro> membros = new ArrayList<>();

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
