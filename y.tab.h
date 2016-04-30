/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     VARIABLE = 258,
     ASSIGN = 259,
     INTEGER = 260,
     NEWLINE = 261,
     LBRACE = 262,
     RBRACE = 263,
     SMALLER = 264,
     SMALLEREQ = 265,
     EQUAL = 266,
     DIFFERENT = 267,
     GREATER = 268,
     GREATEREQ = 269,
     COMMA = 270,
     MIN = 271,
     MAX = 272,
     COLON = 273,
     PLUS = 274,
     TIMES = 275,
     MINUS = 276,
     DIVIDE = 277,
     MODULO = 278,
     QUEST = 279
   };
#endif
/* Tokens.  */
#define VARIABLE 258
#define ASSIGN 259
#define INTEGER 260
#define NEWLINE 261
#define LBRACE 262
#define RBRACE 263
#define SMALLER 264
#define SMALLEREQ 265
#define EQUAL 266
#define DIFFERENT 267
#define GREATER 268
#define GREATEREQ 269
#define COMMA 270
#define MIN 271
#define MAX 272
#define COLON 273
#define PLUS 274
#define TIMES 275
#define MINUS 276
#define DIVIDE 277
#define MODULO 278
#define QUEST 279




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

