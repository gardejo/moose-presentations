# 課題は以下の通りです……
#
# この演習であなたが作った"Person"と"Employee"クラスの編集に戻って、
# それらのクラスにあるアトリビュートの全てに適切な型(type)を追加しましょう。
#
# "Person"クラスでは、"title"と"first_name"と"last_name"の全ての
# アトリビュートが文字列型であるものとします。
#
# "Employee"クラスでは、独自にカスタマイズした型を作りましょう。
#
# "salary_level"アトリビュートは、整数のサブタイプとします。
# それは1から10の値のみを受け付けるものとします。
#
# "salary"アトリビュートは正の整数であるものとします。
#
# 最後に、"ssn"アトリビュートは、文字列のサブタイプとします。
# それは/^\d\d\d-\d\d-\d\d\d\d$/という正規表現と比較して
# 値を検証するものとします。

# Your tasks ...
#
# In this set of exercises, you will return to your Person and
# Employee classes, and add appropriate types for every one of their
# attributes.
#
# In Person, the title, first_name, and last_name attributes should
# all be strings.
#
# In Employee, you will create several custom subtypes.
#
# The salary_level attribute should be an integer subtype that only
# allows for values from 1-10.
#
# The salary attribute should be a positive integer.
#
# Finally, the ssn attribute should be a string subtype that validates
# against a regular expression of /^\d\d\d-\d\d-\d\d\d\d$/

use strict;
use warnings;

use lib 't/lib';

use MooseClass::Tests;

use Person;
use Employee;

MooseClass::Tests::tests05();
