package br.com.cotiinformatica.dtos;

import lombok.Data;

@Data
public class ProdutoRequestDto {

	private String nome;
	private Double preco;
	private Integer quantidade;
	private Integer categoriaId;
}
