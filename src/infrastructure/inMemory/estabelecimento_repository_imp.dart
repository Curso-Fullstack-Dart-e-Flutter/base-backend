import '../../domain/model/estabelecimento.dart';
import '../../domain/port/output/estabelecimento_repository.dart';
import 'estabelecimento_mapper.dart';

class EstabelecimentoRepositoryImp implements EstabelecimentoRepository {
  final EstabelecimentoMapper _estabelecimentoMapper;
  EstabelecimentoRepositoryImp(this._estabelecimentoMapper);

  List<Map> fakeDB = [
    {'name': 'Estabelecimento XPTO', 'cnpj': '123456789102331'},
    {'name': 'Estabelecimento XPT4', 'cnpj': '123456789102331'}
  ];

  @override
  List<Estabelecimento> getEstabelecimentos() {
    return fakeDB.map((e) => _estabelecimentoMapper.toDomain(e)).toList();
  }
}
