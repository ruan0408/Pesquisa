package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by ruan0408 on 6/04/2016.
 */

@Stateless
public class DaoPesquisa {

    @PersistenceContext(unitName = "pesquisa")
    EntityManager emPesquisa;

    public void salvarMembro(Membro membro) { salvar(membro); }

    public void removerMembro(Membro membro) { remover(membro); }

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
