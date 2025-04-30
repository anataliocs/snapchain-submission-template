#![cfg(test)]

extern crate std;
use super::*;
use soroban_sdk::{testutils::{Address as _, EnvTestConfig, Events}, vec, Address, Env, IntoVal, String};

#[test]
fn test() {
    let mut env = Env::default();
    env.set_config(EnvTestConfig { capture_snapshot_at_drop: false });
    env.mock_all_auths();

    let contract_address = env.register(Contract, ());
    let client = ContractClient::new(&env, &contract_address);

    let author0 = Address::generate(&env);
    let author1 = Address::generate(&env);
    let author2 = Address::generate(&env);
    let msg0 = String::from_str(&env, "Dear Sir or Madam");
    let msg1 = String::from_str(&env, "We have been trying to reach you about your car's extended warranty");
    let msg2 = String::from_str(&env, "straight to voicemail");

    client.send(&author0, &msg0);
    assert_eq!(
        env.events().all(),
        vec![
            &env,
            (
                contract_address.clone(),
                (author0,).into_val(&env),
                0u32.into_val(&env)
            )
        ]
    );
    client.send(&author1, &msg1);
    assert_eq!(
        env.events().all(),
        vec![
            &env,
            (
                contract_address.clone(),
                (author1,).into_val(&env),
                1u32.into_val(&env)
            )
        ]
    );
    client.send(&author2, &msg2);
    assert_eq!(
        env.events().all(),
        vec![
            &env,
            (
                contract_address.clone(),
                (author2,).into_val(&env),
                2u32.into_val(&env)
            )
        ]
    );
}
