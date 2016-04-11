package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Membro;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import javax.ejb.EJBException;
import javax.naming.InitialContext;

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
}