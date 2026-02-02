<?php

namespace App;

enum TipoUsuario: string
{
    case ADMIN = 'admin';
    case ALUNO = 'aluno';
    case ORIENTADOR = 'orientador';
    public static function default(): self
    {
        return self::ALUNO;
    }
}
