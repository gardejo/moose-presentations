# 課題は以下の通りです……
#
# まず、"Person"クラスに(訳注:アトリビュートとして)結びついていた口座を、
# (訳注:これまでのロールではなくて)独自のクラスにしましょう。
# クラス名は"BankAccount"(銀行口座)とします。
#
# このクラスは2つのアトリビュートを持つものとします。
# "balance"(残高)はデフォルト値が100の整数です。
# "owner"(持ち主)の値は"Person"オブジェクトです。
#
# "owner"アトリビュートは「弱い」リファレンス(weak reference)にして、
# 循環参照を避けてください。
#
# "deposit"と"withdraw"のメソッドを、"HasAccount"ロールからコピーしてください。
#
# 最後に、読み取り専用の"history"(履歴)アトリビュートを追加してください。
# その値は整数を要素とする配列リファレンスとします。
# デフォルト値は空の配列リファレンスとします。
#
# トリガー(trigger)を使って、残高が変化する際の差分を記録してください。
# 変化前の残高は、それ以前の全ての変化額の合計です。
# 計算には"List::Util"モジュールの"sum"関数を使っても構いません。
# "history"が空の場合にはデフォルト値として0を使って、
# "history"が初めて記録される際の警告を回避してください。
#
# "BankAccount"クラスで"BUILD"メソッドを使い、残高の初期値を履歴へ
# 記録してください。
#
# "HasAccount"ロールを完全に削除しましょう。
# その代わりに、"Person"クラスに"account"アトリビュートを直接追加してください。
#
# 新しい"account"アトリビュートのデフォルト値は、新しい"BankAccount"
# オブジェクトとします。
# Person->depositとPerson->withdrawと呼んだ場合に、その"Person"インスタンスが
# 持つ"BankAccount"オブジェクトのメソッドが呼ばれるように、
# 委譲を使ってください。
#
# "BUILD"メソッドを"Person"クラスに追加して、"Person"の銀行口座(account)の
# 持ち主(owner)を自分自身($self)に設定してください。

# Your tasks ...
#
# First, we want to make the account associated with a Person a proper
# class. Call it BankAccount.
#
# This class should have two attributes, "balance", an Int that
# defaults to 100, and "owner", a Person object.
#
# The owner attribute should be a weak reference to prevent cycles.
#
# Copy the deposit and withdraw methods from the HasAccount role.
#
# Finally, add a read-only history attribute. This will be an ArrayRef
# of Int's. This should default to an empty array reference.
#
# Use a trigger to record the _difference_ after each change to the
# balance. The previous balance is the sum of all the previous
# changes. You can use List::Util's sum function to calculate this. To
# avoid warnings the first time history is recorded, default to 0 if
# history is empty.
#
# Use a BUILD method in BankAccount to record the original balance in
# the history.
#
# We will now delete the HasAccount role entirely. Instead, add an
# "account" attribute to Person directly.
#
# This new account attribute should default to a new BankAccount
# object. Use delegation so that we can call Person->deposit and
# Person->withdraw and have it call those methods on the person's
# BankAccount object.
#
# Add a BUILD method to the Person class to set the owner of the
# Person's bank account to $self.

use strict;
use warnings;

use lib 't/lib';

use MooseClass::Tests;

use Person;
use Employee;

MooseClass::Tests::tests06();
