package br.usp.ime.pesquisa.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */
@Entity
@Table(name = "DEPARTAMENTO")
public class Departamento implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    private int id;

    private String nome;

    @OneToMany(mappedBy = "departamento")
    private List<Area> areas = new ArrayList<>();

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
}
