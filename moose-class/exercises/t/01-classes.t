# 課題は以下の通りです……
#
# "lib/Person.pm"ファイルに"Person"(人間)クラスを作ってください。
# 訳注: lib/Person.pm(と後述のlib/Employee.pmは)既にあります。
# また、t/libではなくlibです。
#
# "Person"クラスは、以下のアトリビュートを持ちます:
#
# * "first_name"(名前：ファーストネーム) - 読み書き両用
# * "last_name"(苗字：ラストネーム) - 読み書き両用
#
# また、このクラスは"full_name"(氏名)というメソッドを持つものとします。
# このメソッドは名前と苗字に分割された文字列を返すものとします。
# 例えば、"Jon Smith"のように。
#
# "BUILDARGS"メソッドをこのクラスへ記述してください。
# このメソッドは2つの要素を持った配列リファレンスを引数として受け容れます。
# 配列の各要素は名前と苗字にそれぞれ割り当てられるものとします。
#
#   Person->new( [ 'Lisa', 'Smith' ] );
#
# "Employee"(従業員)クラスを"lib/Employee.pm"として作ってください。
#
# "Employee"クラスは"Person"クラスのサブクラスです。
#
# "Employee"クラスは以下の読み書き両用アトリビュートを持ちます:
#
# * "title"(肩書き) - 読み書き両用
# * "salary"(給料) - 読み書き両用
# * "ssn"(社会保障番号) - 読み書き両用
#
# "Employee"クラスで、"full_name"メソッドをオーバーライドしてください。
# そのメソッドでは従業員の役職を丸括弧で括って(氏名の)末尾に付け加えて
# ください。例えば、"Jon Smith (Programmer)"のように。
# その際、"override()"関数とsuper()関数を使ってください。
#
# 最後に、両方のクラスからMooseのフン(名前空間にインポートされているMoose用の
# 関数のこと)を取り除き、さらにクラスを不変化してください。

# Your tasks ...
#
# Create a Person class in lib/Person.pm
#
# A Person has the following attributes:
#
# * first_name - read-write
# * last_name - read-write
#
# This class should also have a method named "full_name". This
# method should return the first and last name separated by a string
# ("Jon Smith").
#
# Write a BUILDARGS method for this class which allows the caller to
# pass a two argument array reference. These should be assigned to the
# first and last name respectively.
#
#   Person->new( [ 'Lisa', 'Smith' ] );
#
# Create an Employee class in lib/Employee.pm
#
# The Employee class is a subclass of Person
#
# An Employee has the following read-write attributes:
#
# * title - read-write
# * salary - read-write
# * ssn - read-only
#
# The Employee class should override the "full_name" method to
# append the employee's title in parentheses ("Jon Smith
# (Programmer)"). Use override() and super() for this.
#
# Finally, both classes should be free of Moose droppings, and should be
# immutable.

use strict;
use warnings;

use lib 't/lib';

use MooseClass::Tests;

use Person;
use Employee;

MooseClass::Tests::tests01();
