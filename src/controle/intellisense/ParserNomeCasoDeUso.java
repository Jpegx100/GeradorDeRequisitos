/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools |
 Templates
 * and open the template in the editor.
 */
package controle.intellisense;

import dados.DAO.DicionarioDAO;
import entidades.entity.Projeto;
import java.util.ArrayList;
import java.util.List;
import javax.swing.DefaultListModel;
import javax.swing.text.JTextComponent;
import visao.view.tools.Constante;

/**
 *
 * @author helcio.soares
 */
public class ParserNomeCasoDeUso extends AbstractParser {

    private Projeto projetoSelecionado;
    public ParserNomeCasoDeUso(Projeto projetoSelecionado) {
        this.projetoSelecionado = projetoSelecionado;
    }

    public DefaultListModel avaliaFrase(String frase) {
        List<String> listaOpcoesFuncionalidade = new ArrayList<>();
        List<String> listaOpcoesFuncoesDoProduto = new ArrayList<>();
        List<String> listaOpcoesFuncoesDoProdutoMinusculo = new ArrayList<>();
        
        DefaultListModel listIntellisense = new DefaultListModel();
        listIntellisense = new DefaultListModel();
        listaOpcoesFuncoesDoProduto = buildListIntellisense(Constante.FUNCAODOPRODUTO, projetoSelecionado.getId());
        listaOpcoesFuncionalidade = buildListIntellisense(Constante.FUNCIONALIDADE, projetoSelecionado.getId());
        
        for (String funcaoDoProduto : listaOpcoesFuncoesDoProduto) {
            listaOpcoesFuncoesDoProdutoMinusculo.add(funcaoDoProduto.toLowerCase());
        }
        
        for (String listaOpcoes11 : listaOpcoesFuncionalidade) {
            if (!listaOpcoesFuncoesDoProdutoMinusculo.contains(listaOpcoes11.toLowerCase()))
                listaOpcoesFuncoesDoProduto.add(listaOpcoes11);        
        }
        listIntellisense = listToDefaultListModel(listaOpcoesFuncoesDoProduto);
        return listIntellisense;
    }


}
