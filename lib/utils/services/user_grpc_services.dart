// import 'package:bubbly/proto/user.pbgrpc.dart';
// import 'package:grpc/grpc.dart';

// abstract class UserGrpcServices {
//   void connect();

//   Future<CreateUserResponse> createUser(CreateUserRequest request);

//   Future<CreateUserResponse> createUserSso(CreateUserSsoRequest request);

//   Future<UpdateUserResponse> updateUser(UpdateUserRequest request);
//   Future<GetUserResponse> getUser(GetUserRequest request, String accessToken);

//   Future<UploadProfileImageResponse> uploadProfileImage(
//       UploadProfileImageRequest request);
//   Future<LoginUserResponse> loginUser(LoginUserRequest request);
//   Future<LoginUserResponse> loginUserSso(
//       CreateUserSsoRequest createUserSsoRequest);
//   Future<void> close();
// }

// class UserGrpcServicesImpl extends UserGrpcServices {
//   final String host;
//   final int port;
//   late ClientChannel _channel;
//   late UserServiceClient _client;

//   UserGrpcServicesImpl(this.host, this.port) {
//     connect();
//   }

//   void connect() {
//     _channel = ClientChannel(
//       host,
//       port: port,
//       options: const ChannelOptions(
//         credentials: ChannelCredentials.insecure(),
//       ),
//     );
//     _client = UserServiceClient(_channel);
//   }

//   Future<CreateUserResponse> createUser(CreateUserRequest request) async {
//     try {
//       final response = await _client.createUser(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   Future<CreateUserResponse> createUserSso(CreateUserSsoRequest request) async {
//     try {
//       final response = await _client.createUserSso(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   Future<UpdateUserResponse> updateUser(UpdateUserRequest request) async {
//     try {
//       final response = await _client.updateUser(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   Future<GetUserResponse> getUser(
//       GetUserRequest request, String accessToken) async {
//     try {
//       CallOptions options =
//           CallOptions(metadata: {'Authorization': 'Bearer $accessToken'});
//       final response = await _client.getUser(request, options: options);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   Future<UploadProfileImageResponse> uploadProfileImage(
//       UploadProfileImageRequest request) async {
//     try {
//       final response = await _client.uploadProfileImage(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   Future<LoginUserResponse> loginUser(LoginUserRequest request) async {
//     try {
//       final response = await _client.loginUser(request);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }

//   Future<void> close() async {
//     await _channel.shutdown();
//   }

//   @override
//   Future<LoginUserResponse> loginUserSso(
//       CreateUserSsoRequest createUserSsoRequest) async {
//     try {
//       final response = await _client.loginUserSso(createUserSsoRequest);
//       return response;
//     } catch (e) {
//       print('Caught error: $e');
//       rethrow;
//     }
//   }
// }
