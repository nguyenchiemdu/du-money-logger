// import 'package:bubbly/proto/clip.pbgrpc.dart';
// import 'package:bubbly/services/shared_pref_services.dart';
// import 'package:flutter/material.dart';
// import 'package:grpc/grpc.dart';

// abstract class ClipGrpcServices {
//   void connect();
//   Future<CreateClipResponse> createClip(CreateClipRequest request);
//   Future<ClipResponse> uploadClipStatic(
//       Stream<UploadClipStaticRequest> request);
//   Future<ClipResponse> uploadClipPhotoStatic(UploadClipStaticRequest request);
//   Future<ClipResponse> createUploadClip(
//       Stream<CreateUploadClipRequest> request);
//   Future<PlayseedResponse> getClipLatest();
//   void close();
// }

// class ClipGrpcServicesImpl implements ClipGrpcServices {
//   final host;
//   final port;

//   ClipGrpcServicesImpl(this.host, this.port) {
//     connect();
//   }
//   late ClientChannel _channel;
//   late ClipServiceClient stub;
//   @override
//   void connect() {
//     _channel = ClientChannel(
//       host,
//       port: port,
//       options: const ChannelOptions(
//         credentials: ChannelCredentials.insecure(),
//       ),
//     );
//     stub = ClipServiceClient(_channel);
//   }

//   @override
//   Future<CreateClipResponse> createClip(CreateClipRequest request) async {
//     try {
//       final response = await stub.createClip(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   @override
//   Future<ClipResponse> uploadClipStatic(
//       Stream<UploadClipStaticRequest> request) {
//     try {
//       return stub.uploadClipStatic(request);
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   @override
//   Future<ClipResponse> uploadClipPhotoStatic(
//       UploadClipStaticRequest request) async {
//     try {
//       final response = await stub.uploadClipPhotoStatic(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   @override
//   Future<ClipResponse> createUploadClip(
//       Stream<CreateUploadClipRequest> request) async {
//     String accessToken = SharedPrefService.instance.accessToken!;
//     try {
//       return await stub.createUploadClip(request,
//           options:
//               CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
//     } catch (e, s) {
//       print('Caught error: $e');
//       debugPrintStack(stackTrace: s);
//       rethrow;
//     }
//   }

//   @override
//   Future<void> close() async {
//     await _channel.shutdown();
//   }

//   @override
//   Future<PlayseedResponse> getClipLatest() async {
//     String accessToken = SharedPrefService.instance.accessToken!;
//     PlayseedResponse response = await stub.getClipLatest(NoneParamRequest(),
//         options:
//             CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
//     return response;
//   }
// }
