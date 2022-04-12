import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state.dart';
import '/data/models/amount_model.dart';
import '/data/models/category_model.dart';
import '/data/models/plant_model.dart';
import '/data/models/pot_model.dart';
import '/data/models/size_model.dart';
import '/ui/view-models/concrency/main_screen_view_model.dart';

class GetPlantsCommand extends IBaseCommand {
  @override
  bool canExecute(Map? params) {
    return params!['vm'] is MainScreenViewModel;
  }

  @override
  void execute(Map? params) async {
    MainScreenViewModel _mainScreenViewModel = params!['vm'];
    _mainScreenViewModel.getPlantsRequestState_ = RequestState.waiting;
    await Future.delayed(const Duration(seconds: 0));
    _mainScreenViewModel.getPlantsRequestState_ = RequestState.successfull;
    _mainScreenViewModel.plants_ = [
      PlantModel(
        id: 1,
        title: 'Gasteri Kyoryu',
        price: AmountModel(amount: 228.0, currency: '\$'),
        size: SizeModel(
          heightSize: 310,
          heightPointer: 'MM',
          widthSize: 300,
          widthPointer: 'MM',
        ),
        imageUrls: [
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        ],
        categories: [
          CategoryModel(id: 1, title: 'Concept'),
          CategoryModel(id: 2, title: 'Popular'),
          CategoryModel(id: 3, title: 'New'),
          CategoryModel(id: 4, title: 'Sales'),
        ],
        pots: [
          PotModel(
            id: 1,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9feb/6bef/19a30b49aa2741c4d9327a2e5ceb32fd?Expires=1650844800&Signature=T17uDJ5WDw-cHzaHLYr4C-y0xgbXEGgQxeBDaly9AR800EyP9UF37vyH5x6ru1Z8gk-8pV3fy~pbe8-FpQRgEjUW40Kz-fwRyozmpBupwwoMvfpXopbmsNe3ZP~68xQGqdKrQ0evYFJf5dHeqplaLJ0TqWmdlalcOpOoMhWPZWqaxQ60DyBBsqvs5OqmKS8b6KP2jZjI7ssRnghqzifWdqKXBxU6X2VfcTaucu9sx6HO6ltwwMy8vUmITaC2xnNJp2~plK5oW~zipoquCi5Ea44SYwI8QGV-cr64i79L44DuksdC0iXpp6x7BRWAtpiu~PXXIGFMYVXnLoXN3chwGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 2,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9ee7/8c73/35474374a1916165beb64ee95e47f14c?Expires=1650844800&Signature=HUUHYcC6e7oZ6BvcTDvXA12Z2Qes4ciB0rsX9H1l-BMlka8-uUfJFiRPx~L1qQ4rQdAaLOsOPwhjYo774AvEAM7zv4GXMMqJNeI72r5r6UwB8Bj3OdwYAuvwMLFYRMMFKT4bNN6KTDiA3MhZBshdj~8EwcduzfuVSxpVsyZR-KwAFwtEU4GYIrS6iKykdL16NuEFGbCdaYnOVWk7268BlHZwmmeEPP-2NL-u3W0f-F~bCJFG7MYsg8abSDGJ4zEvSyH7ItBvdIsGkcR2KNtVZskI5LleIq4EcGl8yuifj1GrJ-kQnzUJGVs7E9P7d-5KqkVq8F7cK2y3r7PAVYM4gw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 3,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/e769/652b/e0135e1497873a0aa8c5a288dfc4f9b8?Expires=1650844800&Signature=K8SL8PiQn-JDbPGY7sG6eQimWQ9kiNikFFB9xKqySKnI8yteQQvsXBmyHZkxBL2g~GcLJ6vkhNG6WkOq97s-8~U3T3ANWyuujt6G5aG2WVXKGf3cZVhwtUECZN5g48~mkLLJPgN2tiSRd5LA6Z-JROty8SHsNhhFUB3TRi41TEi0TTh65bCD3bYidRbl-3ixfR9NVMR9PAXymT8L24tt562LW0bbzyW6eM1WShwMUin12GrbziAnGpVtudviRX3V8e-znwUYgOXihlS~V1m4XGbPb4ZUpzrj3eObRgdxtZVO-jB19DuPJ5C0sfuCbgXwySHCiFMyViLI4LU-E0vN3Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
        ],
      ),
      PlantModel(
        id: 2,
        title: 'Astrophytum ',
        price: AmountModel(amount: 228.0, currency: '\$'),
        size: SizeModel(
          heightSize: 310,
          heightPointer: 'MM',
          widthSize: 300,
          widthPointer: 'MM',
        ),
        imageUrls: [
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        ],
        categories: [
          CategoryModel(id: 3, title: 'New'),
        ],
        pots: [
          PotModel(
            id: 1,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9feb/6bef/19a30b49aa2741c4d9327a2e5ceb32fd?Expires=1650844800&Signature=T17uDJ5WDw-cHzaHLYr4C-y0xgbXEGgQxeBDaly9AR800EyP9UF37vyH5x6ru1Z8gk-8pV3fy~pbe8-FpQRgEjUW40Kz-fwRyozmpBupwwoMvfpXopbmsNe3ZP~68xQGqdKrQ0evYFJf5dHeqplaLJ0TqWmdlalcOpOoMhWPZWqaxQ60DyBBsqvs5OqmKS8b6KP2jZjI7ssRnghqzifWdqKXBxU6X2VfcTaucu9sx6HO6ltwwMy8vUmITaC2xnNJp2~plK5oW~zipoquCi5Ea44SYwI8QGV-cr64i79L44DuksdC0iXpp6x7BRWAtpiu~PXXIGFMYVXnLoXN3chwGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 2,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9ee7/8c73/35474374a1916165beb64ee95e47f14c?Expires=1650844800&Signature=HUUHYcC6e7oZ6BvcTDvXA12Z2Qes4ciB0rsX9H1l-BMlka8-uUfJFiRPx~L1qQ4rQdAaLOsOPwhjYo774AvEAM7zv4GXMMqJNeI72r5r6UwB8Bj3OdwYAuvwMLFYRMMFKT4bNN6KTDiA3MhZBshdj~8EwcduzfuVSxpVsyZR-KwAFwtEU4GYIrS6iKykdL16NuEFGbCdaYnOVWk7268BlHZwmmeEPP-2NL-u3W0f-F~bCJFG7MYsg8abSDGJ4zEvSyH7ItBvdIsGkcR2KNtVZskI5LleIq4EcGl8yuifj1GrJ-kQnzUJGVs7E9P7d-5KqkVq8F7cK2y3r7PAVYM4gw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 3,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/e769/652b/e0135e1497873a0aa8c5a288dfc4f9b8?Expires=1650844800&Signature=K8SL8PiQn-JDbPGY7sG6eQimWQ9kiNikFFB9xKqySKnI8yteQQvsXBmyHZkxBL2g~GcLJ6vkhNG6WkOq97s-8~U3T3ANWyuujt6G5aG2WVXKGf3cZVhwtUECZN5g48~mkLLJPgN2tiSRd5LA6Z-JROty8SHsNhhFUB3TRi41TEi0TTh65bCD3bYidRbl-3ixfR9NVMR9PAXymT8L24tt562LW0bbzyW6eM1WShwMUin12GrbziAnGpVtudviRX3V8e-znwUYgOXihlS~V1m4XGbPb4ZUpzrj3eObRgdxtZVO-jB19DuPJ5C0sfuCbgXwySHCiFMyViLI4LU-E0vN3Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
        ],
      ),
      PlantModel(
        id: 3,
        title: 'Astrophytum ',
        price: AmountModel(amount: 228.0, currency: '\$'),
        size: SizeModel(
          heightSize: 310,
          heightPointer: 'MM',
          widthSize: 300,
          widthPointer: 'MM',
        ),
        imageUrls: [
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        ],
        categories: [
          CategoryModel(id: 1, title: 'Concept'),
          CategoryModel(id: 2, title: 'Popular'),
          CategoryModel(id: 3, title: 'New'),
          CategoryModel(id: 4, title: 'Sales'),
        ],
        pots: [
          PotModel(
            id: 1,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9feb/6bef/19a30b49aa2741c4d9327a2e5ceb32fd?Expires=1650844800&Signature=T17uDJ5WDw-cHzaHLYr4C-y0xgbXEGgQxeBDaly9AR800EyP9UF37vyH5x6ru1Z8gk-8pV3fy~pbe8-FpQRgEjUW40Kz-fwRyozmpBupwwoMvfpXopbmsNe3ZP~68xQGqdKrQ0evYFJf5dHeqplaLJ0TqWmdlalcOpOoMhWPZWqaxQ60DyBBsqvs5OqmKS8b6KP2jZjI7ssRnghqzifWdqKXBxU6X2VfcTaucu9sx6HO6ltwwMy8vUmITaC2xnNJp2~plK5oW~zipoquCi5Ea44SYwI8QGV-cr64i79L44DuksdC0iXpp6x7BRWAtpiu~PXXIGFMYVXnLoXN3chwGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 2,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9ee7/8c73/35474374a1916165beb64ee95e47f14c?Expires=1650844800&Signature=HUUHYcC6e7oZ6BvcTDvXA12Z2Qes4ciB0rsX9H1l-BMlka8-uUfJFiRPx~L1qQ4rQdAaLOsOPwhjYo774AvEAM7zv4GXMMqJNeI72r5r6UwB8Bj3OdwYAuvwMLFYRMMFKT4bNN6KTDiA3MhZBshdj~8EwcduzfuVSxpVsyZR-KwAFwtEU4GYIrS6iKykdL16NuEFGbCdaYnOVWk7268BlHZwmmeEPP-2NL-u3W0f-F~bCJFG7MYsg8abSDGJ4zEvSyH7ItBvdIsGkcR2KNtVZskI5LleIq4EcGl8yuifj1GrJ-kQnzUJGVs7E9P7d-5KqkVq8F7cK2y3r7PAVYM4gw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 3,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/e769/652b/e0135e1497873a0aa8c5a288dfc4f9b8?Expires=1650844800&Signature=K8SL8PiQn-JDbPGY7sG6eQimWQ9kiNikFFB9xKqySKnI8yteQQvsXBmyHZkxBL2g~GcLJ6vkhNG6WkOq97s-8~U3T3ANWyuujt6G5aG2WVXKGf3cZVhwtUECZN5g48~mkLLJPgN2tiSRd5LA6Z-JROty8SHsNhhFUB3TRi41TEi0TTh65bCD3bYidRbl-3ixfR9NVMR9PAXymT8L24tt562LW0bbzyW6eM1WShwMUin12GrbziAnGpVtudviRX3V8e-znwUYgOXihlS~V1m4XGbPb4ZUpzrj3eObRgdxtZVO-jB19DuPJ5C0sfuCbgXwySHCiFMyViLI4LU-E0vN3Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
        ],
      ),
      PlantModel(
        id: 4,
        title: 'Astrophytum ',
        price: AmountModel(amount: 228.0, currency: '\$'),
        size: SizeModel(
          heightSize: 310,
          heightPointer: 'MM',
          widthSize: 300,
          widthPointer: 'MM',
        ),
        imageUrls: [
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          'https://s3-alpha-sig.figma.com/img/213e/a8e9/1917601184df48c725137528d00ed968?Expires=1650844800&Signature=hKof62CEKoVVdFKTHgM~kUMn60Vtxdpui-fsGDak8eAVHsJh3QOmb4xOD76RQuXyp6E4Z7pGn2D1Nxyp4b6eahA-Fszc6VvJdGQtlPSEtYTdasoPjNbI5dNf9Ua0jBYaiP~Ib4vEfJVcP2aPc3qbDY7KoFHsAQFyEht~vyjXw6m2tPjVjpPDEnk-9-iE7sYBW-HCHASKM43h2oykAIGy5yaBU~9K55mHmW0CUH64xGSS804FOfGV4SYKEIuvb-BHHMEwp5Y3xweDLXMbIEFBMsziAeIApmWWzx~x7L4xl74sgU5mVuHZcj8fWFL722Cb7hTm-GfDsqauh6JGoLiyfA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        ],
        categories: [
          CategoryModel(id: 1, title: 'Concept'),
          CategoryModel(id: 2, title: 'Popular'),
        ],
        pots: [
          PotModel(
            id: 1,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9feb/6bef/19a30b49aa2741c4d9327a2e5ceb32fd?Expires=1650844800&Signature=T17uDJ5WDw-cHzaHLYr4C-y0xgbXEGgQxeBDaly9AR800EyP9UF37vyH5x6ru1Z8gk-8pV3fy~pbe8-FpQRgEjUW40Kz-fwRyozmpBupwwoMvfpXopbmsNe3ZP~68xQGqdKrQ0evYFJf5dHeqplaLJ0TqWmdlalcOpOoMhWPZWqaxQ60DyBBsqvs5OqmKS8b6KP2jZjI7ssRnghqzifWdqKXBxU6X2VfcTaucu9sx6HO6ltwwMy8vUmITaC2xnNJp2~plK5oW~zipoquCi5Ea44SYwI8QGV-cr64i79L44DuksdC0iXpp6x7BRWAtpiu~PXXIGFMYVXnLoXN3chwGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 2,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/9ee7/8c73/35474374a1916165beb64ee95e47f14c?Expires=1650844800&Signature=HUUHYcC6e7oZ6BvcTDvXA12Z2Qes4ciB0rsX9H1l-BMlka8-uUfJFiRPx~L1qQ4rQdAaLOsOPwhjYo774AvEAM7zv4GXMMqJNeI72r5r6UwB8Bj3OdwYAuvwMLFYRMMFKT4bNN6KTDiA3MhZBshdj~8EwcduzfuVSxpVsyZR-KwAFwtEU4GYIrS6iKykdL16NuEFGbCdaYnOVWk7268BlHZwmmeEPP-2NL-u3W0f-F~bCJFG7MYsg8abSDGJ4zEvSyH7ItBvdIsGkcR2KNtVZskI5LleIq4EcGl8yuifj1GrJ-kQnzUJGVs7E9P7d-5KqkVq8F7cK2y3r7PAVYM4gw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          PotModel(
            id: 3,
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/e769/652b/e0135e1497873a0aa8c5a288dfc4f9b8?Expires=1650844800&Signature=K8SL8PiQn-JDbPGY7sG6eQimWQ9kiNikFFB9xKqySKnI8yteQQvsXBmyHZkxBL2g~GcLJ6vkhNG6WkOq97s-8~U3T3ANWyuujt6G5aG2WVXKGf3cZVhwtUECZN5g48~mkLLJPgN2tiSRd5LA6Z-JROty8SHsNhhFUB3TRi41TEi0TTh65bCD3bYidRbl-3ixfR9NVMR9PAXymT8L24tt562LW0bbzyW6eM1WShwMUin12GrbziAnGpVtudviRX3V8e-znwUYgOXihlS~V1m4XGbPb4ZUpzrj3eObRgdxtZVO-jB19DuPJ5C0sfuCbgXwySHCiFMyViLI4LU-E0vN3Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
        ],
      ),
    ];
  }
}
