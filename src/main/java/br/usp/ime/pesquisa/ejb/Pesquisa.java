package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
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
    List<Area> buscarAreas(Departamento departamento);

    void salvarDepartamento(Departamento departamento);
}
