# 課題は以下の通りです……
#
# "Person"クラスの編集に戻ってください。
# "first_name"と"last_name"のアトリビュートを必須(required)にしてください。
#
# "title"アトリビュートを"Employee"クラスから"Person"クラスに移してください。
# "Person"クラスにある"full_name"メソッドを修正し、
# "title"アトリビュートが存在する場合は、その値を戻り値へ含めるように
# してください。
#
# 断定用(predicate)のメソッドとして"has_title"(肩書きがあるか)を、
# 消去用(clearer)のメソッドとして"clear_title"(肩書きを消去する)を、
# "title"アトリビュートへさらに追加してください。
#
# "Person"クラスのインスタンスに"title"がない場合は、
# "full_name"メソッドは単に名前と苗字を返すものとします。
# 新しい"full_name"メソッドでは、"title"アトリビュートの断定用の
# メソッドを使ってください。
#
# "Employee"クラスの編集に戻ってください。
#
# "Employee"クラスの"title"アトリビュートのデフォルト(default)に、
# "Worker"(労働者)という文字列を設定してください。
# 
# これで、あなたは"full_name"メソッドを再実装するのではなく、
# "Person"クラスから継承できるようになりました。
#
# 読み書き両用の"salary_level"(給与水準)アトリビュートを追加してください。
# この値は1から10の数値であるものとしますが、値の範囲を強制する対処は
# 後で行います。
# このアトリビュートのデフォルト(default)値は1とします。
#
# "salary"アトリビュートを読み取り専用にしてください。さらに、遅延設定(lazy)
# されるようにしてください。デフォルト(default)値は"salary_level"の1万倍として
# 計算してください。デフォルト値の設定にはビルダー(builder)メソッドを
# 使ってください。ビルダーメソッド名は"_build_salary"とします。
# このアトリビュートはコンストラクターでは設定できないものとします。
#
# "HasAccount"ロールの編集に戻って、"balance"アトリビュートの
# デフォルト(default)値を100に設定してください。

# Your tasks ...
#
# Go back to your Person class and make the first_name and last_name
# attributes required.
#
# Move the title attribute from the Employee class to the Person
# class. Adjust full_name in the Person class so it includes the
# title, which is optional.
#
# Add a predicate (has_title) and clearer (clear_title) to the title
# attribute as well.
#
# If a person has no title, the full_name method should simply return
# the first and last name. Use the title's predicate method in the new
# full_name method.
#
# Go back to the Employee class
#
# Make the title attribute default to the string 'Worker' for the
# Employee class. You can now inherit full_name from the Person class
# rather than re-implementing it.
#
# Add a read-write salary_level attribute. This will be a number from
# 1-10 (but we will deal with enforcing this later). This attribute
# should default to 1.
#
# Make the salary attribute read-only. Also make it lazy. The default
# should be calculated as salary_level * 10000. Use a builder method
# to set the default. Name the builder "_build_salary". This attribute
# should not be settable via the constructor.
#
# Go back to the HasAccount role and make the balance default to 100.

use strict;
use warnings;

use lib 't/lib';

use MooseClass::Tests;

use Person;
use Employee;

MooseClass::Tests::tests03();
