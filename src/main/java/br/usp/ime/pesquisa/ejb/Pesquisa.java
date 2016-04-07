package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.Remote;

/**
 * Created by ruan0408 on 6/04/2016.
 */

@Remote
public interface Pesquisa {

    void salvarMembro(Membro membro);
}
