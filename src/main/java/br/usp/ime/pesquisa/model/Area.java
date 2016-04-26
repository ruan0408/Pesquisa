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
    private Integer id;

    private String nome;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(nullable = false)
    private Departamento departamento;

    @OneToMany(mappedBy = "area", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<LinhaPesquisa> linhasPesquisa = new ArrayList<>();


    public Integer getId() {
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

    public Departamento getDepartamento() { return departamento; }
    public void setDepartamento(Departamento departamento) { this.departamento = departamento; }

    public List<LinhaPesquisa> getLinhasPesquisa() {return linhasPesquisa;}
    public void setLinhasPesquisa(List<LinhaPesquisa> linhasPesquisa) {this.linhasPesquisa = linhasPesquisa;}

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Area area = (Area) o;

        if (!getId().equals(area.getId())) return false;
        if (!getNome().equals(area.getNome())) return false;
        if (!getDepartamento().equals(area.getDepartamento())) return false;
        return getLinhasPesquisa() != null ? getLinhasPesquisa().equals(area.getLinhasPesquisa()) : area.getLinhasPesquisa() == null;
//        return true;
    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + getNome().hashCode();
        result = 31 * result + getDepartamento().hashCode();
        result = 31 * result + (getLinhasPesquisa() != null ? getLinhasPesquisa().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Area{");
        sb.append("id=").append(id);
        sb.append(", nome='").append(nome).append('\'');
        sb.append(", linhasPesquisa=").append(linhasPesquisa);
        sb.append('}');
        return sb.toString();
    }
}
