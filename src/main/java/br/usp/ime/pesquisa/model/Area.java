package br.usp.ime.pesquisa.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */
@Entity
@Table(name = "AREA")
public class Area implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String nome;

    @ManyToOne
    private Departamento departamento;

    @OneToMany(mappedBy = "area")
    private List<LinhaPesquisa> linhasPesquisa = new ArrayList<>();



    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
