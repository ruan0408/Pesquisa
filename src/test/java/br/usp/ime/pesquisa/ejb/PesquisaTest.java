package br.usp.ime.pesquisa.ejb;

import br.usp.ime.pesquisa.model.Membro;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import javax.naming.InitialContext;

/**
 * Created by ruan0408 on 7/04/2016.
 */
public class PesquisaTest {

    private static InitialContext context;

    @BeforeClass
    public static void setUp() throws Exception {
        context = new InitialContext();
    }

    @Ignore
    @Test
    public void testSalvarMembro() throws Exception {
        Pesquisa p = (Pesquisa)context.lookup("java:global/pesquisa_ejb/PesquisaBean");
        Membro carlinhos = new Membro();
        carlinhos.setNome("Carlos Eduardo Ferreira");
        carlinhos.setNusp(91228);

        p.salvarMembro(carlinhos);
    }
}