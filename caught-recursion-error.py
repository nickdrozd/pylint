def dumps():
    encoder = Encoder()

    while False:
        for section in []:
            addtoretval, addtosections = encoder._dump_sections()

            if not addtoretval:
                pass


class Encoder:
    def _dump_sections(self):
        retstr = ''
        arraystr = ''

        s, d = self._dump_sections()
        arraystr += s

        retstr += arraystr

        return retstr, s
