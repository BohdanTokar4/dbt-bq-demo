{% snapshotc %}

    {{
        CONFIG(
            target_schema='snapshots',
            strategy='check',
            unique_key='customer_id',
            check_cols=['address'],
        )
    }}

    SELECT * FROM Raw.Customer

{% endsnapshot %}