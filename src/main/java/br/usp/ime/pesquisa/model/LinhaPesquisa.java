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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String nome;

    @Column(columnDefinition = "TEXT")
    private String descricao;

    @ManyToOne(fetch = FetchType.EAGER)
    private Area area;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "LINHAPESQUISA_MEMBRO",
            joinColumns = @JoinColumn(name = "linhapesquisa_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "membro_id", referencedColumnName = "id")
    )
    private List<Membro> membros = new ArrayList<>();


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

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public List<Membro> getMembros() {
        return membros;
    }

    public void setMembros(List<Membro> membros) {
        this.membros = membros;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LinhaPesquisa that = (LinhaPesquisa) o;

        if (getId() != that.getId()) return false;
        if (!getNome().equals(that.getNome())) return false;
        if (getDescricao() != null ? !getDescricao().equals(that.getDescricao()) : that.getDescricao() != null)
            return false;
        if (!area.equals(that.area)) return false;
        return membros != null ? membros.equals(that.membros) : that.membros == null;

    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + getNome().hashCode();
        result = 31 * result + (getDescricao() != null ? getDescricao().hashCode() : 0);
        result = 31 * result + area.hashCode();
        result = 31 * result + (membros != null ? membros.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("LinhaPesquisa{");
        sb.append("id=").append(id);
        sb.append(", nome='").append(nome).append('\'');
        sb.append(", descricao='").append(descricao).append('\'');
        sb.append(", area=").append(area.getNome());
        sb.append(", membros=").append(membros);
        sb.append('}');
        return sb.toString();
    }
}
