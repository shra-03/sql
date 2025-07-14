create table bank_accounts (
    account_id number primary key,
    bank_acc_no varchar2(30) unique,
    recon_type varchar2(30),
    cat_code varchar2(20),
    sub_acc_no varchar2(30),
    status varchar2(10) default 'active'
);

create table item (
    item_id number primary key,
    bank_acc_no varchar2(30),
    txn_reference varchar2(50),
    txn_amount number(12,4),
    drocr varchar2(1),
    txn_ccy varchar2(3),
    stmt_date date,
    system_entry_date timestamp,
    value_date date,
    item_type varchar2(20),
    txn_stock_code varchar2(12),
    stock_id number,
    quantity number(12,4),
    price number(12,4),
    constraint fk_item_bacc foreign key (bank_acc_no)
        references bank_accounts(bank_acc_no)
);

create table Asset_Register (
    stock_id number PRIMARY KEY,
    stock_code varchar2(12) UNIQUE,
    description varchar2(100),
    asset_type varchar2(20) 
);

create table closing_balances (
    cb_id number primary key,
    bank_acc_no varchar2(30),
    cbal_date date,
    cbal_amount number(12,4),
    currency_code varchar2(3),
    constraint fk_cb_bacc foreign key (bank_acc_no)
        references bank_accounts(bank_acc_no)
);

