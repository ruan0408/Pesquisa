package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
import br.usp.ime.pesquisa.model.LinhaPesquisa;
import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.Remote;
import java.util.List;

/**
 * Created by ruan0408 on 6/04/2016.
 */

@Remote
public interface Pesquisa {

    void salvarMembro(Membro membro);
    void removerMembro(Membro membro);

    List<Departamento> buscarDepartamentos();
    Departamento buscarDepartamentoPorNome(String nome);
    void salvarDepartamento(Departamento departamento);

    Area buscarAreaPorNome(String nome);
    void salvarArea(Area area);
    void removerArea(Area area);

    LinhaPesquisa buscarLinhaPesquisaPorNome(String nome);

}
