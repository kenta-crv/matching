# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'test@test.com',password: '111111',first_name: 'テスト', last_name: '太郎', prefecture:'東京',age:'25', history:'4')
User.create!(email: 'a@test.com',password: '111111',first_name: '山田', last_name: '太郎', prefecture:'東京',age:'23', history:'6')
User.create!(email: 'b@test.com',password: '111111',first_name: '加藤', last_name: '太郎', prefecture:'埼玉',age:'27', history:'12')
User.create!(email: 'c@test.com',password: '111111',first_name: '鈴木', last_name: '太郎', prefecture:'東京',age:'21', history:'41')
User.create!(email: 'd@test.com',password: '111111',first_name: '佐藤', last_name: '太郎', prefecture:'千葉',age:'31', history:'1')
User.create!(email: 'e@test.com',password: '111111',first_name: '奥山', last_name: '太郎', prefecture:'東京',age:'64', history:'1')
User.create!(email: 'f@test.com',password: '111111',first_name: '山崎', last_name: '太郎', prefecture:'東京',age:'45', history:'2')
User.create!(email: 'g@test.com',password: '111111',first_name: '二階堂', last_name: '太郎', prefecture:'千葉',age:'55', history:'6')
User.create!(email: 'h@test.com',password: '111111',first_name: '七瀬', last_name: '太郎', prefecture:'東京',age:'33', history:'4')
User.create!(email: 'i@test.com',password: '111111',first_name: '十条', last_name: '太郎', prefecture:'東京',age:'22', history:'5')
User.create!(email: 'j@test.com',password: '111111',first_name: '猪狩', last_name: '太郎', prefecture:'東京',age:'54', history:'4')

Company.create!(email: 'test@test.com',password: '111111',company:'株式会社A', first_name: 'テスト', last_name: '太郎', prefecture:'東京',age:'25', history:'4')
Company.create!(email: 'a@test.com',password: '111111',company:'株式会社A',first_name: '山田', last_name: '太郎', prefecture:'東京',age:'23', history:'6')
Company.create!(email: 'b@test.com',password: '111111',company:'株式会社B',first_name: '加藤', last_name: '太郎', prefecture:'埼玉',age:'27', history:'12')
Company.create!(email: 'c@test.com',password: '111111',company:'株式会社C',first_name: '鈴木', last_name: '太郎', prefecture:'東京',age:'21', history:'41')
Company.create!(email: 'd@test.com',password: '111111',company:'株式会社D',first_name: '佐藤', last_name: '太郎', prefecture:'千葉',age:'31', history:'1')
Company.create!(email: 'e@test.com',password: '111111',company:'株式会社E',first_name: '奥山', last_name: '太郎', prefecture:'東京',age:'64', history:'1')
Company.create!(email: 'f@test.com',password: '111111',company:'株式会社F',first_name: '山崎', last_name: '太郎', prefecture:'東京',age:'45', history:'2')
Company.create!(email: 'g@test.com',password: '111111',company:'株式会社G',first_name: '二階堂', last_name: '太郎', prefecture:'千葉',age:'55', history:'6')
Company.create!(email: 'h@test.com',password: '111111',company:'株式会社H',first_name: '七瀬', last_name: '太郎', prefecture:'東京',age:'33', history:'4')
Company.create!(email: 'i@test.com',password: '111111',company:'株式会社I',first_name: '十条', last_name: '太郎', prefecture:'東京',age:'22', history:'5')
Company.create!(email: 'j@test.com',password: '111111',company:'株式会社J',first_name: '猪狩', last_name: '太郎', prefecture:'東京',age:'54', history:'4')
