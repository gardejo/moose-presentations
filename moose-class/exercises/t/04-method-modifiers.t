# 課題は以下の通りです……
#
# まず、3つの新しいクラスを作って、"augment"メソッドモディファイヤーを
# 使いましょう。クラス階層は以下のようなものです:
#
#   Document (文書)
#      |
#   Report (報告書)
#      |
#   TPSReport (TPS報告書)
#
# "Document"クラスは"title"(題名)と"author"(作者)という2つの
# 読み取り専用アトリビュートを持つものとします。
#
# "Report"クラスは"summary"(概要)という1つの読み取り専用アトリビュートを
# 持つものとします。
#
# 最後に、"TPSReport"クラスは"t"(処理件数)と"p"(秒間処理件数)と
# "s"(秒数)という3つの読み取り専用アトリビュートを持つものとします。
#
# この演習の目的は、以下のような報告書を制作することです:
#
# $title
#
# $summary
#
# t: $t
# p: $p
# s: $s
#
# Written by $author
#
# この報告書はDocument->outputメソッドによって文字列として返される
# ものとします。
#
# 各項目を仕切る改行の数は1つ以上あれば良いので、

# 各項目を区切る改行の数を何個にするかは、あまり心配しないでください。
# 最低1つあればよいです。テストではそれ以上の数の改行も受け容れるような
# 対応をしています。
#
# "Report"クラスと"TPSReport"クラスでaugmentメソッドモディファイヤーを
# 使ってください。"Document"クラスが$titleと$authorを出力すると同時に
# 適切な内容を「注入」するように実装してください。

# Your tasks ...
#
# First, we will create a set of three new classes to make use of the augment
# method modifier. The class hierarchy will look like this:
#
#   Document
#      |
#   Report
#      |
#   TPSReport
#
# The Document class should have two read-only attributes: "title" and
# "author".
#
# The Report class should have one read-only attribute: "summary".
#
# Finally, the TPSReport class should have three read-only attributes: "t",
# "p", and "s".
#
# The goal is to produce a report that looks this:
#
# $title
#
# $summary
#
# t: $t
# p: $p
# s: $s
#
# Written by $author
#
# This report should be returned as a string from the Document->output method.
#
# Don't worry too much about how many newlines separate each item (as long as
# it's at least one). The test does a little massaging to make this more
# forgiving.
#
# Use augment method modifiers in Report and TPSReport to "inject" the
# relevant content, while Document will output the $title and $author.

use strict;
use warnings;

use lib 't/lib';

use MooseClass::Tests;

use TPSReport;

MooseClass::Tests::tests04();
