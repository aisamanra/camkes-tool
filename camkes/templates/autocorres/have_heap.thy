/*- if 'autocorres/have_heap.thy' not in included -*/
/*- do included.add('autocorres/have_heap.thy') -*/

/*# Assume that the variables 'interface', 'used_types' and 'have_heap' have
 *# been initialised by our parent, and then populate 'have_heap' and
 *# 'used_types' according to the interface's elements.
 #*/

/*- for m in interface.methods -*/
  /*- for p in m.parameters -*/
    /*- if p.type.type == 'int8_t' -*/
      /*- do used_types.add('8 sword') -*/
      /*- do have_heap.__setitem__(8, True) -*/
    /*- elif p.type.type in ['uint8_t', 'char'] -*/
      /*- do used_types.add('8 word') -*/
      /*- do have_heap.__setitem__(8, True) -*/
    /*- elif p.type.type == 'int16_t' -*/
      /*- do used_types.add('16 sword') -*/
      /*- do have_heap.__setitem__(16, True) -*/
    /*- elif p.type.type == 'uint16_t' -*/
      /*- do used_types.add('16 word') -*/
      /*- do have_heap.__setitem__(16, True) -*/
    /*- elif p.type.type in ['int32_t', 'int'] -*/
      /*- do used_types.add('32 sword') -*/
      /*- do have_heap.__setitem__(32, True) -*/
    /*- elif p.type.type in ['uint32_t', 'unsigned int'] -*/
      /*- do used_types.add('32 word') -*/
      /*- do have_heap.__setitem__(32, True) -*/
    /*- elif p.type.type == 'int64_t' -*/
      /*- do used_types.add('64 sword') -*/
      /*- do have_heap.__setitem__(64, True) -*/
    /*- elif p.type.type == 'uint64_t' -*/
      /*- do used_types.add('64 word') -*/
      /*- do have_heap.__setitem__(64, True) -*/
    /*- else -*/
      /*? raise(NotImplementedError()) ?*/
    /*- endif -*/
  /*- endfor -*/
/*- endfor -*/

/*- endif -*/
