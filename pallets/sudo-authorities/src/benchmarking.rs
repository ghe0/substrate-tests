// #![cfg(feature = "runtime-benchmarks")]
//
// use crate::*;
// use frame_benchmarking::v2::*;
// use frame_system::RawOrigin;
//
// #[benchmarks]
// mod benchmarks {
// 	use super::*;
//
// 	// This will measure the execution time of `set_dummy`.
// 	#[benchmark]
// 	fn set_dummy_benchmark() {
// 		// let node_data = NodeData {
// 		// 	sign: [0u8; 32],
// 		// 	enc: [0u8; 32],
// 		// 	id: [0u8; 32],
// 		// };
// 		// let node_address = NodeAddress::Ipv4([0u8; 6]);
//
// 		// #[extrinsic_call]
// 		// join(RawOrigin::Root, node_data, node_address);
//
// 		// This is the optional benchmark verification phase, asserting certain states.
// 		// assert_eq!(Dummy::<T>::get(), Some(value))
// 	}
// }
