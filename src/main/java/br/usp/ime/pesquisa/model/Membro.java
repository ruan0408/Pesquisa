package br.usp.ime.pesquisa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by ruan0408 on 6/04/2016.
 */
@Entity
@Table(name = "MEMBRO")
public class Membro implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;

    private String nome;
    private int nusp;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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
}
