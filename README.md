# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

概要

企業には多くの個人が属している。組織の中における個人において、
チームやグループ、プロジェクトなど与えられる役割や業務は多様である。
本アプリでは、個人の持つ業務(task)を重要度と優先度毎の４つに分類し管理を行う。
そのtaskは４つの項目に分けることが出来る。

A領域　優先度　高い　重要度　高い
B領域　優先度　低い　重要度　高い
C領域　優先度　高い　重要度　低い
D領域　優先度　低い　重要度　低い

またtaskはメンバー毎、プロジェクト毎、グループ毎に分けられる。
このタスクを個人ではもちろんのこと、グループやプロジェクトで共有することで
生産性の向上に努めることが本アプリの目的である。

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :tasks
- has_many :projects
- has_many :members

## projectsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|member_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key:true|

### Association
- belongs_to :group
- belogns_to :menber
- has_many :tasks
- has_many :members

## menbersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|string|null: false|
|project_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key:true|

### Association
- belongs_to :group
- has_many :projects
- has_many :tasks

## tasksテーブル
|Column|Type|Options|
|content|string|null: false|
|priority_type|string|null: false|
|project_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key:true|
|member_id|references|null: false, foreign_key:true|

### Association
- belongs_to :group
- belongs_to :member
- belongs_to :project
