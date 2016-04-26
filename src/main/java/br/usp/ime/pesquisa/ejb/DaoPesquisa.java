package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
import br.usp.ime.pesquisa.model.LinhaPesquisa;
import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */

@Stateless
@Local
public class DaoPesquisa {

    @PersistenceContext(unitName = "pesquisa")
    private EntityManager emPesquisa;

    public void salvarMembro(Membro membro) { salvar(membro); }

    public void removerMembro(Membro membro) { remover(membro); }

    public List<Departamento> buscarDepartamentos() {
        String q = "SELECT d FROM Departamento d";
        Query query = emPesquisa.createQuery(q);
        List<Departamento> departamentos = (List<Departamento>) query.getResultList();
        return departamentos;
    }

    public Departamento buscarDepartamentoPorNome(String nome) {
        String q = "SELECT d FROM Departamento d WHERE d.nome LIKE :nome";
        Query query = emPesquisa.createQuery(q).setParameter("nome", nome);
        return (Departamento) query.getSingleResult();
    }

    public void salvarDepartamento(Departamento departamento) {
        salvar(departamento);
    }

    public Area buscarAreaPorNome(String nome) {
        String q = "SELECT a FROM Area a WHERE a.nome LIKE :nome";
        Query query = emPesquisa.createQuery(q).setParameter("nome", nome);
        return (Area) query.getSingleResult();
    }

    public void salvarArea(Area area) { salvar(area); }
    public void removerArea(Area area) { remover(area); }

    public LinhaPesquisa buscarLinhaPesquisaPorNome(String nome) {
        String q = "SELECT l FROM LinhaPesquisa l WHERE l.nome LIKE :nome";
        Query query = emPesquisa.createQuery(q).setParameter("nome", nome);
        return (LinhaPesquisa) query.getSingleResult();
    }



    public Object salvar(Object o) {
        return emPesquisa.merge(o);
    }

    public void remover(Object o) {
        emPesquisa.remove(emPesquisa.merge(o));
    }
}
