package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
import br.usp.ime.pesquisa.model.Membro;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import java.util.List;

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

    @Override
    public void removerMembro(Membro membro) {
        daoPesquisa.removerMembro(membro);
    }

    @Override
    public List<Departamento> buscarDepartamentos() {
        return daoPesquisa.buscarDepartamentos();
    }

    @Override
    public List<Area> buscarAreas(Departamento departamento) {
        return daoPesquisa.buscarAreas(departamento);
    }

    @Override
    public void salvarDepartamento(Departamento departamento) {
        daoPesquisa.salvarDepartamento(departamento);
    }
}
