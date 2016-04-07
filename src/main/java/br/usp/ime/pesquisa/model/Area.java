package br.usp.ime.pesquisa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by ruan0408 on 6/04/2016.
 */
@Entity
@Table(name = "AREA")
public class Area {

    @Id
    @GeneratedValue
    private Integer id;
    private String nome;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
