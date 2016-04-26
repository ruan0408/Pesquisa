package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Area;
import br.usp.ime.pesquisa.model.Departamento;
import br.usp.ime.pesquisa.model.LinhaPesquisa;
import br.usp.ime.pesquisa.model.Membro;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import javax.ejb.EJBException;
import javax.naming.InitialContext;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by ruan0408 on 7/04/2016.
 */
public class PesquisaTest {

    private static Pesquisa pesquisa;

    @BeforeClass
    public static void setUp() throws Exception {
        InitialContext context = new InitialContext();
        pesquisa = (Pesquisa) context.lookup("java:global/pesquisa/PesquisaBean");
    }

    @Ignore
    @Test(expected = EJBException.class)
    public void testSalvarMembroRepetido() throws Exception {
        Membro carlinhos = new Membro();
        carlinhos.setNome("Carlos Eduardo Ferreira");
        carlinhos.setNusp(91228);

        pesquisa.salvarMembro(carlinhos);
    }

    @Ignore
    @Test
    public void testRemoverMembro() {
        Membro carlinhos = new Membro();
        carlinhos.setNome("Carlos Eduardo Ferreira");
        carlinhos.setNusp(91228);

        pesquisa.removerMembro(carlinhos);
    }

    @Ignore
    @Test
    public void testSalvarDepartamentos() {
        pesquisa.salvarDepartamento(new Departamento("Ciência da Computação"));
        pesquisa.salvarDepartamento(new Departamento("Estatística"));
        pesquisa.salvarDepartamento(new Departamento("Matemática"));
        pesquisa.salvarDepartamento(new Departamento("Matemática Aplicada"));
    }

    @Test
    public void testBuscarDepartamentos() {
        List<Departamento> departamentos = pesquisa.buscarDepartamentos();
        assertEquals(4, departamentos.size());
    }

    @Test
    public void testBuscarDepartamentosPorNome() {
        Departamento dcc = pesquisa.buscarDepartamentoPorNome("Ciência da Computação");
        assertEquals("Ciência da Computação", dcc.getNome());
        assertEquals(7, dcc.getAreas().size());
    }

    @Test
    public void testBuscarAreasPorNome() throws Exception {
        Area sistemas = pesquisa.buscarAreaPorNome("Sistemas de Software");
        assertEquals("Sistemas de Software", sistemas.getNome());
//        assertEquals(10, sistemas.getLinhasPesquisa().size());
    }

    @Test
    public void testBuscarLinhaPesquisaPorNome() throws Exception {
        LinhaPesquisa redes = pesquisa.buscarLinhaPesquisaPorNome("Redes de Computadores");
        assertEquals("Redes de Computadores", redes.getNome());
        assertFalse(redes.getMembros().isEmpty());

        for (Membro membro : redes.getMembros()) {
            assertTrue(membro.getNome().equals("Manoel Marcilio Sanches") ||
                    membro.getNome().equals("Daniel Macedo Batista"));
        }
    }

    @Test(expected = Exception.class)
    public void testSalvarAreaSemDepartamento() throws Exception {
        Area areaFake = new Area();
        areaFake.setNome("Area fake");
        pesquisa.salvarArea(areaFake);
        areaFake = pesquisa.buscarAreaPorNome(areaFake.getNome());
    }

    @Test
    public void testSalvarAreaComDepartamento() throws Exception {
        Area areaFake = new Area();
        Departamento dcc = pesquisa.buscarDepartamentoPorNome("Ciência da Computação");
        areaFake.setNome("area fake");
        areaFake.setDepartamento(dcc);
        pesquisa.salvarArea(areaFake);
//        System.out.println(areaFake);
        areaFake = pesquisa.buscarAreaPorNome(areaFake.getNome());
//        System.out.println(areaFake);
//        assertTrue(areaFake.getId() != null);
        pesquisa.removerArea(areaFake);
    }
}