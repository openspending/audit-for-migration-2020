# More on the OpenSpending database

You can find more information about how we are auditing the database in this public spreadsheet:
- https://docs.google.com/spreadsheets/d/1Cno0jUkfl8ozf0qjaNhuCmJEmMaL2U65sNONqVTEEnM/edit?usp=sharing

## OpenSpending database - Basic statistics

| Item                                                                    | Value       |
| ----------------------------------------------------------------------- | ----------- |
| Total number of tables                                                  | 8,233       |
| Total number of rows across all tables                                  | 153,884,300 |
| Number of tables with at least 100 rows                                 | 3,361       |
| Number of tables with number of rows between 10 and 99 (both inclusive) | 1,796       |
| Number of empty tables reported                                         | 298         |

## Database samples

You can find relevant samples for tables with high read/write access under the [samples/](samples) directory with an accompanying `datapackage.json` for each sample, which is a useful descriptor file containing metadata about a data package, a format extensively used as part of the Frictionless Data tooling as a convenient way to represent tabular data. Get to know more about this practical open-source toolkit at [frictionlessdata.io](https://frictionlessdata.io).
