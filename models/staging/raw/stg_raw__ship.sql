with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        CAST(ship_cost AS FLOAT64) as ship_cost,
        orders_id,
        shipping_fee,
        logcost

    from source

)

select * from renamed