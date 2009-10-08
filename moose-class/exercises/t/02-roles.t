# 課題は以下の通りです……
#
# "Printable"(画面印字可能)ロールを作ってください。
# このロールは、それを消費するクラスに、"as_string"(「文字列として」)
# メソッドが実装されていることを単に要求するだけのもの
# (訳注:インターフェースとしてのロール)です。
#
# 先程の演習で作った"Person"クラスで、このロールを消費するようにしてください。
# "as_string"メソッドの出力には、"full_name"メソッドを使ってください。
# "Employee"サブクラスはこの出力をオーバーライドしたままにしてください。
#
# "HasAccount"(口座を持つ)ロールを実装してください。
# このロールは読み書き両用の"balance"(残高)アトリビュートを提供するものと
# します。さらに、"deposit"(預金)と"withdraw"(引き出し)のメソッドも実装して
# ください。0未満に現金残高を減らすことを"withdraw"メソッドで試みた場合には、
# 以下の文字列を含むエラー表示付きで"die"してください:
#
#  Balance cannot be negative
#  訳注:「残高は負の値にできません」
#
# "Person"クラスはこの"HasAccount"ロールも消費するようにしてください。
#
# 全てのロールからMooseのフンを取り除いてください。

# Your tasks ...
#
# Create a Printable role. This role should simply require that the
# consuming class implement an "as_string" method.
#
# Make the Person class from the last set of exercises consume this
# role. Use full_name as the output for the as_string method. The
# Employee subclass should still override this output.
#
# Implement a role HasAccount. This should provide a read-write
# "balance" attribute. It should also implement "deposit" and
# "withdraw" methods. Attempting to reduce the cash balance below 0
# via "withdraw" should die with an error that includes the string:
#
#  Balance cannot be negative
#
# Make the Person class consumes this role as well.
#
# Make sure all roles are free of Moose droppings.

use strict;
use warnings;

use lib 't/lib';

use MooseClass::Tests;

use Person;
use Employee;

MooseClass::Tests::tests02();
