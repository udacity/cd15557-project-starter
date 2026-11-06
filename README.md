# Brightly Analytics: From Raw Orders to Trusted dbt Marts

You are a newly hired Analytics Engineer at **Brightly**, a growing online
retailer. The analytics team keeps rewriting the same ad-hoc SQL against raw
operational tables, and different dashboards report different numbers because the
logic lives in scattered queries. Your job is to stand up a clean, modular **dbt
project** that turns the raw orders data into a small set of trusted, tested, and
documented analytics marts the BI team can build on with confidence.

Full instructions, tasks, and the rubric are in the classroom. This README is a
quick reference for the starter code.

## What's provided

- `dbt_project.yml`, `profiles.yml` — project configuration.
- `macros/` — `cents_to_dollars` (money helper) and `generate_schema_name`
  (routes the raw seeds into a `raw` schema). You don't need to edit these.
- `seeds/` — the raw Brightly data as CSVs (`seeds/raw/`) plus a
  `product_categories` reference seed.
- `models/staging/_sources.yml` — the raw tables declared as dbt sources.
- `models/staging/stg_customers.sql` and `stg_products.sql` — two **worked
  examples** showing the staging pattern (and how to call `cents_to_dollars`).

## What you'll build (see the classroom for full detail)

- The remaining **staging** models, the **intermediate** model, and four
  **marts**: `fct_orders`, `fct_order_items`, `dim_customers`, `fct_daily_sales`.
- **Tests** and **documentation** (descriptions + a doc block), and the
  generated **docs site** with its lineage graph.

Files to complete are marked with `TODO`.

## How to run (Udacity workspace)

```bash
cd /workspace
dbt build    # seed + run + test
dbt docs generate
dbt docs serve --host 0.0.0.0 --port 8580
```

`dbt build` runs your models in dependency order and then all tests. When
everything is complete you should see `PASS` with `ERROR=0`.

**Build as you complete each task.** The `TODO` models start as empty stubs, so
a full `dbt build` will error on the unfinished ones until you fill them in.
Build incrementally instead — for example `dbt build --select staging`, then add
each model as you finish it (e.g. `dbt build --select +int_order_items_enriched`).
Once every `TODO` is done, a full `dbt build` passes with `ERROR=0`.

## License

[License](LICENSE.txt)
