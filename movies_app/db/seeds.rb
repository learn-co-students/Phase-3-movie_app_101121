#deletes resources every time see seed
ReceiptLineItem.destroy_all
Food.destroy_all
Receipt.destroy_all
Ticket.destroy_all
Movie.destroy_all

m1 = Movie.create({title:'Grapes of Wrath', director:'John Ford', description:'Based off the book of the same name', showing:true})
m2 = Movie.create({title:'Seven Samurai ', director:'Akira Kurosawa', description:'Epic samurai drama',showing:true})

Ticket.create({name:'ix', price:5.00, movie_id: m1.id})
Ticket.create({name:'rose', price:5.00, movie_id: m1.id})
Ticket.create({name:'yasha', price:5.00, movie_id: m1.id})
Ticket.create({name:'boe', price:5.00, movie_id: m1.id})

Ticket.create({name:'ix', price:5.00, movie_id: m2.id})
Ticket.create({name:'rose', price:5.00, movie_id: m2.id})

f1 = Food.create({food_name:'popcorn', price:3.00})
f2 = Food.create({food_name:'Junior Mints', price:2.50})
f3 = Food.create({food_name:'soada', price:2.50})

r1 = Receipt.create({customer_name:'ix'})
r2 = Receipt.create({customer_name:'rose'})
r3 = Receipt.create({customer_name:'yasha'})
r4 = Receipt.create({customer_name:'boe'})

ReceiptLineItem.create(food_id:f1.id, receipt_id:r1.id)
ReceiptLineItem.create(food_id:f3.id, receipt_id:r1.id)

ReceiptLineItem.create(food_id:f2.id, receipt_id:r2.id)

ReceiptLineItem.create(food_id:f1.id, receipt_id:r3.id)
ReceiptLineItem.create(food_id:f2.id, receipt_id:r3.id)

ReceiptLineItem.create(food_id:f2.id, receipt_id:r4.id)
ReceiptLineItem.create(food_id:f3.id, receipt_id:r4.id)







# create_table "foods", force: :cascade do |t|
#     t.string "food_name"
#     t.float "price"
#   end

#   create_table "movies", force: :cascade do |t|
#     t.string "title"
#     t.string "director"
#     t.string "description"
#     t.boolean "showing"
#   end

#   create_table "receipt_line_items", force: :cascade do |t|
#     t.integer "food_id"
#     t.integer "receipt_id"
#     t.index ["food_id"], name: "index_receipt_line_items_on_food_id"
#     t.index ["receipt_id"], name: "index_receipt_line_items_on_receipt_id"
#   end

#   create_table "receipts", force: :cascade do |t|
#     t.string "customer_name"
#   end

#   create_table "tickets", force: :cascade do |t|
#     t.string "name"
#     t.float "price"
#     t.integer "movie_id"
#   end
