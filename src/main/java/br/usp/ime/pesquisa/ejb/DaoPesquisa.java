package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */

@Stateless
public class DaoPesquisa {

    @PersistenceContext(unitName = "pesquisa")
    EntityManager emPesquisa;

    public void salvarMembro(Membro membro) { salvar(membro); }

    public void removerMembro(Membro membro) { remover(membro); }

    public List<Departamento> buscarDepartamentos() {
        String q = "SELECT d FROM Departamento d";
        Query query = emPesquisa.createQuery(q);
        List<Departamento> departamentos = query.getResultList();
        return departamentos;
    }

    public List<Area> buscarAreas(Departamento departamento) {
        String q = "SELECT a FROM Area a WHERE a.departamento.id = :dep_id";
        Query query = emPesquisa.createQuery(q).setParameter("dep_id", departamento.getId());
        List<Area> areas = (List<Area>) query.getResultList();
        return areas;
    }

    public void salvarDepartamento(Departamento departamento) {
        salvar(departamento);
    }

    public Object salvar(Object o) {
        try {
            o = emPesquisa.merge(o);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return o;
    }

    public Object remover(Object o) {
        try {
//            o = emPesquisa.merge(o);
            emPesquisa.remove(o);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return o;
    }
}
