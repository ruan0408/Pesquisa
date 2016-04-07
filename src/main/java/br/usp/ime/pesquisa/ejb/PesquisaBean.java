package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.EJB;
import javax.ejb.Stateless;

/**
 * Created by ruan0408 on 6/04/2016.
 */

@Stateless
public class PesquisaBean implements Pesquisa {

    @EJB
    private DaoPesquisa daoPesquisa;

    @Override
    public void salvarMembro(Membro membro) {
        daoPesquisa.salvarMembro(membro);
    }
}
