# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
||discription|text|null: false|
||string|null: false|
|nickname|string|null: false|
### Association
- has_many :exhibits
- has_many :messages
- has_meny :requests

## exhibitsテーブル

|Column|Type|Options|
|------|----|-------|
|content_name|string|null: false|
|img|text|null: false|
|discription|text|null: false|
|from|string|null: false|
|days|integer|null: false|
|price|integer|null: false|

### Association
- belong to :user
- has_many :messages
- has_many :tags, through:  :contents_tags
- has_many :exhibits_tags 

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|body|text｜
|image|string|
### Association
- belong to :exhibit
- belong to :user

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|female|string|
|male|string|
|kids|string|
|interior|string|
|Entertainment|string|

### Association
- has_meny :exhibits_tags
- has_meny :exhibits, through:  :exhibits_tags
- has_meny :requests_tags
- has_meny :requests, through:  :requests_tags

## requestsテーブル

|Column|Type|Options|
|------|----|-------|
|request_name|string|null: false|
|text|text||

### Association
- belong to :user
- has_meny :requests_tags
- has_meny :tags, through:  :requests_tags

## tags_exhibitsテーブル
|Column|Type|Options|
|------|----|-------|
|exhibit_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :exhibit
- belongs_to :tag















## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|category_id|references|null: false, foreign_key: true|
|shipping_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|seller_user_id|references|null: false, foreign_key: true|
|name|string|null: false|
|i_text|text|null: false|
|condition|integer|null: false|
|price|integer|null: false|
|trading_status|integer|null: false|
|completed_at|datetime|

### Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :likes dependent: :destroy
- has_many :comments dependent: :destroy
- has_many :messages dependent: :destroy
- has_one :shipping
- has_many :review
- has_many :item_image dependent: :destroy
- has_one :order

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|text|null: false|

### Association
- belongs_to :user
- belongs_to :item

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|text|null: false|

### Association
- belongs_to :user
- belongs_to :item

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|image_url|string|null: false|

### Association
- belongs_to :item


## shippingテーブル
|Column|Type|Options|
|------|----|-------|
|fee_burgen|boolean|null: false, foreign_key: true|
|service|integer|null: false|
|area|string|null: false|
|handling_time|integer|null: false|

### Association
- belongs_to :item






