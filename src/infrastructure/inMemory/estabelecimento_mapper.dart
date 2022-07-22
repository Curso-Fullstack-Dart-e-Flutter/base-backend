import '../../domain/model/estabelecimento.dart';

class EstabelecimentoMapper {
  Estabelecimento toDomain(Map map) {
    return Estabelecimento(name: map['name'], cnpj: map['cnpj']);
  }
}
