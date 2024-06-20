package br.com.cotiinformatica.dtos;

import lombok.Data;

@Data
public class ProdutoResponseDto {

	private Integer id;
	private String nome;
	private Double preco;
	private Integer quantidade;
	private CategoriaResponseDto categoria;
}
