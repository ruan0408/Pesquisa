package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
import br.usp.ime.pesquisa.model.LinhaPesquisa;
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
    DaoPesquisa daoPesquisa;

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
    public Departamento buscarDepartamentoPorNome(String nome) { return daoPesquisa.buscarDepartamentoPorNome(nome); }
    @Override
    public void salvarDepartamento(Departamento departamento) {
        daoPesquisa.salvarDepartamento(departamento);
    }


    @Override
    public Area buscarAreaPorNome(String nome) {
        return daoPesquisa.buscarAreaPorNome(nome);
    }
    @Override
    public void salvarArea(Area area) {daoPesquisa.salvarArea(area);}

    @Override
    public void removerArea(Area area) { daoPesquisa.removerArea(area); }

    @Override
    public LinhaPesquisa buscarLinhaPesquisaPorNome(String nome) {
        return daoPesquisa.buscarLinhaPesquisaPorNome(nome);
    }
}
