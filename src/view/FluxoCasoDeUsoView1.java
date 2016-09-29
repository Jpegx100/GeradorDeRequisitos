/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import entity.CasoDeUso;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import javax.swing.JEditorPane;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import static view.Editor.jSplitPane3;

/**
 *
 * @author helcio.soares
 */
public class FluxoCasoDeUsoView1 extends javax.swing.JPanel {

    /**
     * Creates new form FluxoCasoDeUsoView
     */
    public static CasoDeUso casoDeUso;
    private JPanel pai;
    public static ArrayList<JTextArea> mapTextAtrea = new ArrayList();

    public FluxoCasoDeUsoView1() {
        initComponents();
    }

    FluxoCasoDeUsoView1(JPanel pai) {
        this.pai = pai;
        initComponents();

    }

    public void setCasoDeUso() {
        fluxoAlternativo.setText(casoDeUso.getFluxoAlternativo());
        fluxoExcecao.setText(casoDeUso.getFluxoExcecao());
        fluxoPrincipal.setText(casoDeUso.getFluxoPrincipal());
        mapTextAtrea.add(fluxoAlternativo);
        mapTextAtrea.add(fluxoExcecao);
        mapTextAtrea.add(fluxoPrincipal);
        // fluxoAlternativo.set
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        fluxoPrincipal = new javax.swing.JTextArea();
        jScrollPane2 = new javax.swing.JScrollPane();
        fluxoAlternativo = new javax.swing.JTextArea();
        jScrollPane3 = new javax.swing.JScrollPane();
        fluxoExcecao = new javax.swing.JTextArea();

        setMinimumSize(new java.awt.Dimension(202, 400));
        addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                formKeyPressed(evt);
            }
        });
        setLayout(new java.awt.GridBagLayout());

        jLabel2.setText("Fluxo principal");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.FIRST_LINE_START;
        gridBagConstraints.weightx = 0.55;
        add(jLabel2, gridBagConstraints);

        jLabel3.setText("Fluxos alternativo/exceção:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.FIRST_LINE_START;
        gridBagConstraints.weightx = 0.45;
        add(jLabel3, gridBagConstraints);

        fluxoPrincipal.setColumns(20);
        fluxoPrincipal.setLineWrap(true);
        fluxoPrincipal.setRows(10);
        fluxoPrincipal.setToolTipText("Pressione ESC para voltar À tela de Casos de uso!");
        fluxoPrincipal.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                fluxoPrincipalKeyPressed(evt);
            }
        });
        jScrollPane1.setViewportView(fluxoPrincipal);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridheight = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx = 0.55;
        gridBagConstraints.weighty = 2.0;
        add(jScrollPane1, gridBagConstraints);

        fluxoAlternativo.setColumns(20);
        fluxoAlternativo.setLineWrap(true);
        fluxoAlternativo.setRows(5);
        fluxoAlternativo.setToolTipText("Pressione ESC para voltar À tela de Casos de uso!");
        fluxoAlternativo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                fluxoPrincipalKeyPressed(evt);
            }
        });
        jScrollPane2.setViewportView(fluxoAlternativo);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx = 0.45;
        gridBagConstraints.weighty = 1.0;
        add(jScrollPane2, gridBagConstraints);

        fluxoExcecao.setColumns(20);
        fluxoExcecao.setLineWrap(true);
        fluxoExcecao.setRows(5);
        fluxoExcecao.setToolTipText("Pressione ESC para voltar À tela de Casos de uso!");
        fluxoExcecao.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                fluxoPrincipalKeyPressed(evt);
            }
        });
        jScrollPane3.setViewportView(fluxoExcecao);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx = 0.45;
        gridBagConstraints.weighty = 1.0;
        add(jScrollPane3, gridBagConstraints);
    }// </editor-fold>//GEN-END:initComponents

    private void formKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_formKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == KeyEvent.VK_ESCAPE) {
            Editor.jSplitPane3.setLeftComponent(pai);
            pai.repaint();
        }
    }//GEN-LAST:event_formKeyPressed

    private void fluxoPrincipalKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_fluxoPrincipalKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ESCAPE) {
            Editor.jSplitPane3.setLeftComponent(pai);

        }
    }//GEN-LAST:event_fluxoPrincipalKeyPressed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    public static javax.swing.JTextArea fluxoAlternativo;
    public static javax.swing.JTextArea fluxoExcecao;
    public static javax.swing.JTextArea fluxoPrincipal;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    // End of variables declaration//GEN-END:variables
}
