package br.com.cotiinformatica.entities;

import java.util.List;
import java.util.UUID;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Fornecedor {

	private UUID id;
	private String razaoSocial;
	private String cnpj;
	private List<Produto> produtos;

}
