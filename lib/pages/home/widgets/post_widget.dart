import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(children: [
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(
                  'images/perfil.png',
                ),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 16),
              const Expanded(
                  child: Text(
                'dalila70',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              )),
              GestureDetector(
                  child: const Icon(
                Icons.more_horiz_sharp,
                color: Colors.white,
              ))
            ]),
          ),
          Image.asset('images/perfil.png'),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(Icons.message_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(Icons.send),
                color: Colors.white,
                onPressed: () {},
              ),
              Expanded(child: Container()),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                color: Colors.white,
                onPressed: () {},
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Curtido por dalila70 e outros 300 pessoas',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'HÁ 1 HORA',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ]),
          ),
          if (desktop) ...[
            const Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: 'Adicione um comentário...',
                      hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                )),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Publicar',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ],
        ],
      ),
    );
  }
}
