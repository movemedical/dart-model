import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movemedical_model/app.dart' as _0;
import 'package:movemedical_api/command.dart' as _1;
import 'package:modux/src/command.dart' as _2;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_response.dart'
    as _3;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_response.dart'
    as _4;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_inv_transfer_type.dart'
    as _5;
import 'package:movemedical_api/model/order_reason.dart' as _6;
import 'package:movemedical_api/model/sql/enums/order_reason_group.dart' as _7;
import 'package:movemedical_api/model/inventory_type.dart' as _8;
import 'package:movemedical_api/model/sql/enums/sales_order_inventory_source.dart'
    as _9;
import 'package:movemedical_api/model/shipping_service.dart' as _10;
import 'package:movemedical_api/model/sql/enums/move_item_class.dart' as _11;
import 'package:movemedical_api/model/sql/enums/move_item_type.dart' as _12;
import 'package:movemedical_api/model/sql/enums/location_type.dart' as _13;
import 'package:movemedical_api/model/sql/enums/facility_type.dart' as _14;
import 'package:movemedical_api/model/location.dart' as _15;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user.dart'
    as _16;
import 'package:movemedical_api/model/sql/enums/user_perspective.dart' as _17;
import 'package:movemedical_api/model/contact.dart' as _18;
import 'package:movemedical_api/model/sql/enums/contact_type.dart' as _19;
import 'package:movemedical_api/model/general_contact_type.dart' as _20;
import 'package:movemedical_api/model/email.dart' as _21;
import 'package:movemedical_api/model/person_name.dart' as _22;
import 'package:movemedical_api/model/sql/enums/sso_type.dart' as _23;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_info.dart'
    as _24;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart'
    as _25;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_unit.dart'
    as _26;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user_permissions.dart'
    as _27;
import 'package:movemedical_api/model/system_admin.dart' as _28;
import 'package:movemedical_api/model/ae.dart' as _29;
import 'package:movemedical_api/model/sql/enums/org_type.dart' as _30;
import 'package:movemedical_api/model/phone_number.dart' as _31;
import 'package:movemedical_api/model/hcp.dart' as _32;
import 'package:movemedical_api/model/sql/enums/hcp_type.dart' as _33;
import 'package:movemedical_api/model/hcr.dart' as _34;
import 'package:movemedical_api/model/sql/enums/hcr_type.dart' as _35;
import 'package:movemedical_api/model/dce.dart' as _36;
import 'package:movemedical_api/model/removeOrRefactor/consumer.dart' as _37;
import 'package:movemedical_api/model/ui_client_configuration.dart' as _38;
import 'package:movemedical_api/model/sql/enums/ui_client_configuration_type.dart'
    as _39;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_dashboard_widget.dart'
    as _40;
import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart'
    as _41;
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart'
    as _42;
import 'package:movemedical_api/model/sql/enums/mobile_report.dart' as _43;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_request.dart'
    as _44;
import 'package:movemedical_model/nav.dart' as _45;
import 'package:modux/src/router.dart' as _46;
import 'package:movemedical_model/splash.dart' as _47;
import 'package:movemedical_model/auth/login.dart' as _48;
import 'package:movemedical_model/dashboard/dashboard.dart' as _49;
import 'package:modux/src/action.dart' as _50;
import 'package:movemedical_model/scaffold/scaffold.dart' as _51;
import 'package:movemedical_model/scaffold/drawer.dart' as _52;
import 'package:movemedical_model/scaffold/bottom_bar.dart' as _53;
import 'package:movemedical_model/messages/list.dart' as _54;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_request.dart'
    as _55;
import 'package:movemedical_api/model/sql/enums/attributable_type.dart' as _56;
import 'package:movemedical_api/model/pagination_params.dart' as _57;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_response.dart'
    as _58;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_conversation.dart'
    as _59;
import 'package:movemedical_api/model/attributable_object.dart' as _60;
import 'package:movemedical_model/messages/list_filter.dart' as _61;
import 'package:movemedical_model/auth/mod.dart' as _62;
import 'package:movemedical_model/schedule/mod.dart' as _63;
import 'package:movemedical_model/schedule/list.dart' as _64;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_request.dart'
    as _65;
import 'package:movemedical_api/model/sql/enums/body_side.dart' as _66;
import 'package:movemedical_api/model/sql/enums/case_event_status.dart' as _67;
import 'package:movemedical_api/model/sql/enums/gender.dart' as _68;
import 'package:movemedical_api/model/order_by_params.dart' as _69;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_order_by.dart'
    as _70;
import 'package:movemedical_api/model/order_by_direction.dart' as _71;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_response.dart'
    as _72;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_case_event.dart'
    as _73;
import 'package:movemedical_model/schedule/list_filter.dart' as _74;
import 'package:movemedical_model/schedule/detail.dart' as _75;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_request.dart'
    as _76;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_response.dart'
    as _77;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_case_event.dart'
    as _78;
import 'package:movemedical_api/model/case_type.dart' as _79;
import 'package:movemedical_api/model/biz_unit.dart' as _80;
import 'package:movemedical_api/model/org_unit.dart' as _81;
import 'package:movemedical_api/model/removeOrRefactor/hospital.dart' as _82;
import 'package:movemedical_api/model/physician.dart' as _83;
import 'package:movemedical_api/model/address.dart' as _84;
import 'package:movemedical_api/model/patient.dart' as _85;
import 'package:movemedical_api/model/sql/enums/length_measurement_type.dart'
    as _86;
import 'package:movemedical_api/model/sql/enums/weight_measurement_type.dart'
    as _87;
import 'package:movemedical_api/model/hcr_team.dart' as _88;
import 'package:movemedical_api/model/hcr_team_type.dart' as _89;
import 'package:movemedical_api/model/procedure.dart' as _90;
import 'package:movemedical_api/model/sub_procedure.dart' as _91;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_loan.dart'
    as _92;
import 'package:movemedical_api/model/sql/enums/loan_status.dart' as _93;
import 'package:movemedical_api/model/sql/enums/order_status.dart' as _94;
import 'package:movemedical_api/model/insurance.dart' as _95;
import 'package:movemedical_api/model/order_header_lite.dart' as _96;
import 'package:movemedical_api/model/customer_address.dart' as _97;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_event.dart'
    as _98;
import 'package:movemedical_api/model/sql/enums/event_type.dart' as _99;
import 'package:movemedical_api/model/sql/enums/event_status.dart' as _100;
import 'package:movemedical_api/model/sql/enums/event_state.dart' as _101;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_display_rules.dart'
    as _102;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_case_doc.dart'
    as _103;
import 'package:movemedical_model/messages/mod.dart' as _104;
import 'package:movemedical_model/messages/convo.dart' as _105;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_request.dart'
    as _106;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_response.dart'
    as _107;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_participant.dart'
    as _108;
import 'package:movemedical_api/model/removeOrRefactor/message.dart' as _109;
import 'package:movemedical_api/model/removeOrRefactor/message_message_participant.dart'
    as _110;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_display_rules.dart'
    as _111;
import 'package:movemedical_model/directory/mod.dart' as _112;
import 'package:movemedical_api/state/push.dart' as _113;
import 'package:movemedical_api/model/push/audit_file_push_message.dart'
    as _114;
import 'package:movemedical_api/model/push/audit_file_push_message_file_update_type.dart'
    as _115;
import 'package:movemedical_api/model/push/audit_file_update_push_message.dart'
    as _116;
import 'package:movemedical_api/model/push/audit_file_update_push_message_audit_file_update_type.dart'
    as _117;
import 'package:movemedical_api/model/push/audit_updated_push_message.dart'
    as _118;
import 'package:movemedical_api/model/push/case_event_file_update_push_message.dart'
    as _119;
import 'package:movemedical_api/model/push/case_event_file_update_push_message_case_event_file_update_type.dart'
    as _120;
import 'package:movemedical_api/model/push/case_event_update_push_message.dart'
    as _121;
import 'package:movemedical_api/model/push/case_event_update_type.dart' as _122;
import 'package:movemedical_api/model/push/case_requirements_updated_push_message.dart'
    as _123;
import 'package:movemedical_api/model/push/case_schedule_update_push_message.dart'
    as _124;
import 'package:movemedical_api/model/push/conversation_updated_push_message.dart'
    as _125;
import 'package:movemedical_api/model/push/export_log_file_push_message.dart'
    as _126;
import 'package:movemedical_api/model/push/export_log_file_push_message_file_update_type.dart'
    as _127;
import 'package:movemedical_api/model/push/facility_updated_push_message.dart'
    as _128;
import 'package:movemedical_api/model/push/import_log_file_push_message.dart'
    as _129;
import 'package:movemedical_api/model/push/import_log_file_push_message_file_update_type.dart'
    as _130;
import 'package:movemedical_api/model/push/issue_regenerated_push_message.dart'
    as _131;
import 'package:movemedical_api/model/push/message_added_push_message.dart'
    as _132;
import 'package:movemedical_api/model/push/messages_read_unread_push_message.dart'
    as _133;
import 'package:movemedical_api/model/push/note_added_updated_push_message.dart'
    as _134;
import 'package:movemedical_api/model/push/order_detail_push_message.dart'
    as _135;
import 'package:movemedical_api/model/push/order_file_push_message.dart'
    as _136;
import 'package:movemedical_api/model/push/order_file_push_message_file_update_type.dart'
    as _137;
import 'package:movemedical_api/model/push/refresh_conversation_list_push_message.dart'
    as _138;
import 'package:movemedical_api/model/push/shipment_file_update_push_message.dart'
    as _139;
import 'package:movemedical_api/model/push/shipment_file_update_push_message_file_update_type.dart'
    as _140;
import 'package:movemedical_api/model/push/stock_summary_key_updated_push_message.dart'
    as _141;
import 'package:movemedical_api/model/push/ui_setup_updated_push_message.dart'
    as _142;
import 'package:movemedical_api/model/essentials/intraop/move_presence_event.dart'
    as _143;
import 'package:movemedical_api/model/essentials/intraop/presence_event_type.dart'
    as _144;
import 'package:movemedical_api/model/essentials/intraop/move_presence.dart'
    as _145;

SerializersBuilder $serializers() => (Serializers().toBuilder()
  ..addBuilderFactory(FullType(BuiltList, [FullType(_8.InventoryType)]),
      () => ListBuilder<_8.InventoryType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_11.MoveItemClass)]),
      () => ListBuilder<_11.MoveItemClass>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_12.MoveItemType)]),
      () => ListBuilder<_12.MoveItemType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_13.LocationType)]),
      () => ListBuilder<_13.LocationType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_14.FacilityType)]),
      () => ListBuilder<_14.FacilityType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_15.Location)]),
      () => ListBuilder<_15.Location>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_5.GetUiSetupAllApiInvTransferType)]),
      () => ListBuilder<_5.GetUiSetupAllApiInvTransferType>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_25.GetUiSetupAllApiBizUnit)]),
      () => ListBuilder<_25.GetUiSetupAllApiBizUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_26.GetUiSetupAllApiOrgUnit)]),
      () => ListBuilder<_26.GetUiSetupAllApiOrgUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_38.UiClientConfiguration)]),
      () => ListBuilder<_38.UiClientConfiguration>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_40.GetUiSetupMobileApiDashboardWidget)]),
      () => ListBuilder<_40.GetUiSetupMobileApiDashboardWidget>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_42.MobileNavigationElement)]),
      () => ListBuilder<_42.MobileNavigationElement>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_43.MobileReport)]),
      () => ListBuilder<_43.MobileReport>())
  ..addBuilderFactory(FullType(BuiltList, []), () => ListBuilder<String>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_60.AttributableObject)]),
      () => ListBuilder<_60.AttributableObject>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_59.ListConversationsApiConversation)]),
      () => ListBuilder<_59.ListConversationsApiConversation>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_66.BodySide)]),
      () => ListBuilder<_66.BodySide>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_67.CaseEventStatus)]),
      () => ListBuilder<_67.CaseEventStatus>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_73.ListCaseEventsApiCaseEvent)]),
      () => ListBuilder<_73.ListCaseEventsApiCaseEvent>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_96.OrderHeaderLite)]),
      () => ListBuilder<_96.OrderHeaderLite>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_103.GetCaseEventDetailApiCaseDoc)]),
      () => ListBuilder<_103.GetCaseEventDetailApiCaseDoc>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_108.GetConversationApiParticipant)]),
      () => ListBuilder<_108.GetConversationApiParticipant>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_110.MessageMessageParticipant)]),
      () => ListBuilder<_110.MessageMessageParticipant>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_109.Message)]),
      () => ListBuilder<_109.Message>())
  ..add(_0.AppState.serializer)
  ..add(_1.LoginResponse.serializer)
  ..add(_1.LoginRequest.serializer)
  ..add(_1.ApiCommand.serializer)
  ..add(_1.ApiResultCode.serializer)
  ..add(_1.ApiResult.serializer)
  ..add(_1.ApiState.serializer)
  ..addBuilderFactory(FullType(_1.ApiCommand, [FullType(_1.LoginRequest)]),
      () => _1.ApiCommandBuilder<_1.LoginRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_44.GetUiSetupMobileApiRequest)]),
      () => _1.ApiCommandBuilder<_44.GetUiSetupMobileApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_55.ListConversationsApiRequest)]),
      () => _1.ApiCommandBuilder<_55.ListConversationsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_65.ListCaseEventsApiRequest)]),
      () => _1.ApiCommandBuilder<_65.ListCaseEventsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_76.GetCaseEventDetailApiRequest)]),
      () => _1.ApiCommandBuilder<_76.GetCaseEventDetailApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_106.GetConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_106.GetConversationApiRequest>())
  ..addBuilderFactory(FullType(_1.ApiResult, [FullType(_1.LoginResponse)]),
      () => _1.ApiResultBuilder<_1.LoginResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_3.GetUiSetupMobileApiResponse)]),
      () => _1.ApiResultBuilder<_3.GetUiSetupMobileApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_58.ListConversationsApiResponse)]),
      () => _1.ApiResultBuilder<_58.ListConversationsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_72.ListCaseEventsApiResponse)]),
      () => _1.ApiResultBuilder<_72.ListCaseEventsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_77.GetCaseEventDetailApiResponse)]),
      () => _1.ApiResultBuilder<_77.GetCaseEventDetailApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_107.GetConversationApiResponse)]),
      () => _1.ApiResultBuilder<_107.GetConversationApiResponse>())
  ..add(_2.CommandStatus.serializer)
  ..add(_2.Command.serializer)
  ..add(_2.CommandResultCode.serializer)
  ..add(_2.CommandResult.serializer)
  ..add(_2.CommandState.serializer)
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_1.ApiCommand, [FullType(_1.LoginRequest)])
      ]),
      () => _2.CommandBuilder<_1.ApiCommand<_1.LoginRequest>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_1.ApiCommand, [FullType(_44.GetUiSetupMobileApiRequest)])
      ]),
      () => _2.CommandBuilder<_1.ApiCommand<_44.GetUiSetupMobileApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_46.RouteCommand, [FullType(_49.DashboardState)])
      ]),
      () => _2.CommandBuilder<_46.RouteCommand<_49.DashboardState>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_46.RouteCommand, [FullType(_48.LoginState)])
      ]),
      () => _2.CommandBuilder<_46.RouteCommand<_48.LoginState>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_46.RouteCommand, [FullType(_47.SplashState)])
      ]),
      () => _2.CommandBuilder<_46.RouteCommand<_47.SplashState>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_1.ApiCommand, [FullType(_55.ListConversationsApiRequest)])
      ]),
      () => _2.CommandBuilder<_1.ApiCommand<_55.ListConversationsApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_46.RouteCommand, [FullType(_61.ConversationListFilterState)])
      ]),
      () => _2.CommandBuilder<
          _46.RouteCommand<_61.ConversationListFilterState>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_46.RouteCommand, [FullType(_54.ConversationListState)])
      ]),
      () => _2.CommandBuilder<_46.RouteCommand<_54.ConversationListState>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_1.ApiCommand, [FullType(_65.ListCaseEventsApiRequest)])
      ]),
      () => _2.CommandBuilder<_1.ApiCommand<_65.ListCaseEventsApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_1.ApiCommand, [FullType(_76.GetCaseEventDetailApiRequest)])
      ]),
      () =>
          _2.CommandBuilder<_1.ApiCommand<_76.GetCaseEventDetailApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.Command, [
        FullType(_1.ApiCommand, [FullType(_106.GetConversationApiRequest)])
      ]),
      () => _2.CommandBuilder<_1.ApiCommand<_106.GetConversationApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_1.ApiResult, [FullType(_1.LoginResponse)])
      ]),
      () => _2.CommandResultBuilder<_1.ApiResult<_1.LoginResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_1.ApiResult, [FullType(_3.GetUiSetupMobileApiResponse)])
      ]),
      () => _2.CommandResultBuilder<
          _1.ApiResult<_3.GetUiSetupMobileApiResponse>>())
  ..addBuilderFactory(FullType(_2.CommandResult, [FullType(_46.RouteResult)]),
      () => _2.CommandResultBuilder<_46.RouteResult>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_46.RouteResult, [FullType(_50.Empty)])
      ]),
      () => _2.CommandResultBuilder<_46.RouteResult<_50.Empty>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_1.ApiResult, [FullType(_58.ListConversationsApiResponse)])
      ]),
      () => _2.CommandResultBuilder<
          _1.ApiResult<_58.ListConversationsApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_46.RouteResult, [FullType(_55.ListConversationsApiRequest)])
      ]),
      () => _2.CommandResultBuilder<
          _46.RouteResult<_55.ListConversationsApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_1.ApiResult, [FullType(_72.ListCaseEventsApiResponse)])
      ]),
      () => _2.CommandResultBuilder<
          _1.ApiResult<_72.ListCaseEventsApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_1.ApiResult, [FullType(_77.GetCaseEventDetailApiResponse)])
      ]),
      () => _2.CommandResultBuilder<
          _1.ApiResult<_77.GetCaseEventDetailApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandResult, [
        FullType(_1.ApiResult, [FullType(_107.GetConversationApiResponse)])
      ]),
      () => _2.CommandResultBuilder<
          _1.ApiResult<_107.GetConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_1.ApiCommand, [FullType(_1.LoginRequest)]),
        FullType(_1.ApiResult, [FullType(_1.LoginResponse)])
      ]),
      () => _2.CommandStateBuilder<_1.ApiCommand<_1.LoginRequest>,
          _1.ApiResult<_1.LoginResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_1.ApiCommand, [FullType(_44.GetUiSetupMobileApiRequest)]),
        FullType(_1.ApiResult, [FullType(_3.GetUiSetupMobileApiResponse)])
      ]),
      () => _2.CommandStateBuilder<
          _1.ApiCommand<_44.GetUiSetupMobileApiRequest>,
          _1.ApiResult<_3.GetUiSetupMobileApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_46.RouteCommand, [FullType(_49.DashboardState)]),
        FullType(_46.RouteResult)
      ]),
      () => _2.CommandStateBuilder<_46.RouteCommand<_49.DashboardState>,
          _46.RouteResult>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_46.RouteCommand, [FullType(_48.LoginState)]),
        FullType(_46.RouteResult)
      ]),
      () => _2.CommandStateBuilder<_46.RouteCommand<_48.LoginState>,
          _46.RouteResult>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_46.RouteCommand, [FullType(_47.SplashState)]),
        FullType(_46.RouteResult, [FullType(_50.Empty)])
      ]),
      () => _2.CommandStateBuilder<_46.RouteCommand<_47.SplashState>,
          _46.RouteResult<_50.Empty>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_1.ApiCommand, [FullType(_55.ListConversationsApiRequest)]),
        FullType(_1.ApiResult, [FullType(_58.ListConversationsApiResponse)])
      ]),
      () => _2.CommandStateBuilder<
          _1.ApiCommand<_55.ListConversationsApiRequest>,
          _1.ApiResult<_58.ListConversationsApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_46.RouteCommand, [FullType(_61.ConversationListFilterState)]),
        FullType(_46.RouteResult, [FullType(_55.ListConversationsApiRequest)])
      ]),
      () => _2.CommandStateBuilder<
          _46.RouteCommand<_61.ConversationListFilterState>,
          _46.RouteResult<_55.ListConversationsApiRequest>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_46.RouteCommand, [FullType(_54.ConversationListState)]),
        FullType(_46.RouteResult, [FullType(_50.Empty)])
      ]),
      () => _2.CommandStateBuilder<_46.RouteCommand<_54.ConversationListState>,
          _46.RouteResult<_50.Empty>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_1.ApiCommand, [FullType(_65.ListCaseEventsApiRequest)]),
        FullType(_1.ApiResult, [FullType(_72.ListCaseEventsApiResponse)])
      ]),
      () => _2.CommandStateBuilder<_1.ApiCommand<_65.ListCaseEventsApiRequest>,
          _1.ApiResult<_72.ListCaseEventsApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_1.ApiCommand, [FullType(_76.GetCaseEventDetailApiRequest)]),
        FullType(_1.ApiResult, [FullType(_77.GetCaseEventDetailApiResponse)])
      ]),
      () => _2.CommandStateBuilder<
          _1.ApiCommand<_76.GetCaseEventDetailApiRequest>,
          _1.ApiResult<_77.GetCaseEventDetailApiResponse>>())
  ..addBuilderFactory(
      FullType(_2.CommandState, [
        FullType(_1.ApiCommand, [FullType(_106.GetConversationApiRequest)]),
        FullType(_1.ApiResult, [FullType(_107.GetConversationApiResponse)])
      ]),
      () =>
          _2.CommandStateBuilder<_1.ApiCommand<_106.GetConversationApiRequest>, _1.ApiResult<_107.GetConversationApiResponse>>())
  ..add(_3.GetUiSetupMobileApiResponse.serializer)
  ..add(_4.GetUiSetupAllApiResponse.serializer)
  ..add(_5.GetUiSetupAllApiInvTransferType.serializer)
  ..add(_6.OrderReason.serializer)
  ..add(_7.OrderReasonGroup.serializer)
  ..add(_8.InventoryType.serializer)
  ..add(_9.SalesOrderInventorySource.serializer)
  ..add(_10.ShippingService.serializer)
  ..add(_11.MoveItemClass.serializer)
  ..add(_12.MoveItemType.serializer)
  ..add(_13.LocationType.serializer)
  ..add(_14.FacilityType.serializer)
  ..add(_15.Location.serializer)
  ..add(_16.GetUiSetupAllApiUser.serializer)
  ..add(_17.UserPerspective.serializer)
  ..add(_18.Contact.serializer)
  ..add(_19.ContactType.serializer)
  ..add(_20.GeneralContactType.serializer)
  ..add(_21.Email.serializer)
  ..add(_22.PersonName.serializer)
  ..add(_23.SSOType.serializer)
  ..add(_24.GetUiSetupAllApiOrgInfo.serializer)
  ..add(_25.GetUiSetupAllApiBizUnit.serializer)
  ..add(_26.GetUiSetupAllApiOrgUnit.serializer)
  ..add(_27.GetUiSetupAllApiUserPermissions.serializer)
  ..add(_28.SystemAdmin.serializer)
  ..add(_29.Ae.serializer)
  ..add(_30.OrgType.serializer)
  ..add(_31.PhoneNumber.serializer)
  ..add(_32.Hcp.serializer)
  ..add(_33.HcpType.serializer)
  ..add(_34.Hcr.serializer)
  ..add(_35.HcrType.serializer)
  ..add(_36.Dce.serializer)
  ..add(_37.Consumer.serializer)
  ..add(_38.UiClientConfiguration.serializer)
  ..add(_39.UiClientConfigurationType.serializer)
  ..add(_40.GetUiSetupMobileApiDashboardWidget.serializer)
  ..add(_41.MobileDashboardWidgetType.serializer)
  ..add(_42.MobileNavigationElement.serializer)
  ..add(_43.MobileReport.serializer)
  ..add(_44.GetUiSetupMobileApiRequest.serializer)
  ..add(_45.NavState.serializer)
  ..add(_46.RouteCommandAction.serializer)
  ..add(_46.RouteType.serializer)
  ..add(_46.RouteCommand.serializer)
  ..add(_46.RouteResult.serializer)
  ..addBuilderFactory(FullType(_46.RouteCommand, [FullType(_49.DashboardState)]), () => _46.RouteCommandBuilder<_49.DashboardState>())
  ..addBuilderFactory(FullType(_46.RouteCommand, [FullType(_48.LoginState)]), () => _46.RouteCommandBuilder<_48.LoginState>())
  ..addBuilderFactory(FullType(_46.RouteCommand, [FullType(_47.SplashState)]), () => _46.RouteCommandBuilder<_47.SplashState>())
  ..addBuilderFactory(FullType(_46.RouteCommand, [FullType(_61.ConversationListFilterState)]), () => _46.RouteCommandBuilder<_61.ConversationListFilterState>())
  ..addBuilderFactory(FullType(_46.RouteCommand, [FullType(_54.ConversationListState)]), () => _46.RouteCommandBuilder<_54.ConversationListState>())
  ..addBuilderFactory(FullType(_46.RouteResult, [FullType(_50.Empty)]), () => _46.RouteResultBuilder<_50.Empty>())
  ..addBuilderFactory(FullType(_46.RouteResult, [FullType(_55.ListConversationsApiRequest)]), () => _46.RouteResultBuilder<_55.ListConversationsApiRequest>())
  ..add(_47.SplashState.serializer)
  ..add(_48.LoginState.serializer)
  ..add(_49.DashboardState.serializer)
  ..add(_50.Empty.serializer)
  ..add(_51.ScaffoldState.serializer)
  ..add(_52.DrawerState.serializer)
  ..add(_53.BottomBarState.serializer)
  ..add(_54.ConversationListState.serializer)
  ..add(_55.ListConversationsApiRequest.serializer)
  ..add(_56.AttributableType.serializer)
  ..add(_57.PaginationParams.serializer)
  ..add(_58.ListConversationsApiResponse.serializer)
  ..add(_59.ListConversationsApiConversation.serializer)
  ..add(_60.AttributableObject.serializer)
  ..add(_61.ConversationListFilterState.serializer)
  ..add(_62.AuthState.serializer)
  ..add(_63.ScheduleState.serializer)
  ..add(_64.CaseEventListState.serializer)
  ..add(_65.ListCaseEventsApiRequest.serializer)
  ..add(_66.BodySide.serializer)
  ..add(_67.CaseEventStatus.serializer)
  ..add(_68.Gender.serializer)
  ..add(_69.OrderByParams.serializer)
  ..addBuilderFactory(FullType(_69.OrderByParams, [FullType(_70.ListCaseEventsApiOrderBy)]), () => _69.OrderByParamsBuilder<_70.ListCaseEventsApiOrderBy>())
  ..add(_70.ListCaseEventsApiOrderBy.serializer)
  ..add(_71.OrderByDirection.serializer)
  ..add(_72.ListCaseEventsApiResponse.serializer)
  ..add(_73.ListCaseEventsApiCaseEvent.serializer)
  ..add(_74.CaseEventListFilterState.serializer)
  ..add(_75.CaseEventDetailState.serializer)
  ..add(_76.GetCaseEventDetailApiRequest.serializer)
  ..add(_77.GetCaseEventDetailApiResponse.serializer)
  ..add(_78.GetCaseEventDetailApiCaseEvent.serializer)
  ..add(_79.CaseType.serializer)
  ..add(_80.BizUnit.serializer)
  ..add(_81.OrgUnit.serializer)
  ..add(_82.Hospital.serializer)
  ..add(_83.Physician.serializer)
  ..add(_84.Address.serializer)
  ..add(_85.Patient.serializer)
  ..add(_86.LengthMeasurementType.serializer)
  ..add(_87.WeightMeasurementType.serializer)
  ..add(_88.HcrTeam.serializer)
  ..add(_89.HcrTeamType.serializer)
  ..add(_90.Procedure.serializer)
  ..add(_91.SubProcedure.serializer)
  ..add(_92.GetCaseEventDetailApiLoan.serializer)
  ..add(_93.LoanStatus.serializer)
  ..add(_94.OrderStatus.serializer)
  ..add(_95.Insurance.serializer)
  ..add(_96.OrderHeaderLite.serializer)
  ..add(_97.CustomerAddress.serializer)
  ..add(_98.GetCaseEventDetailApiEvent.serializer)
  ..add(_99.EventType.serializer)
  ..add(_100.EventStatus.serializer)
  ..add(_101.EventState.serializer)
  ..add(_102.GetCaseEventDetailApiDisplayRules.serializer)
  ..add(_103.GetCaseEventDetailApiCaseDoc.serializer)
  ..add(_104.MessagesState.serializer)
  ..add(_105.ConversationState.serializer)
  ..add(_106.GetConversationApiRequest.serializer)
  ..add(_107.GetConversationApiResponse.serializer)
  ..add(_108.GetConversationApiParticipant.serializer)
  ..add(_109.Message.serializer)
  ..add(_110.MessageMessageParticipant.serializer)
  ..add(_111.GetConversationApiDisplayRules.serializer)
  ..add(_112.DirectoryState.serializer)
  ..add(_113.PushPayloads.serializer)
  ..add(_114.AuditFilePushMessage.serializer)
  ..add(_115.AuditFilePushMessageFileUpdateType.serializer)
  ..add(_116.AuditFileUpdatePushMessage.serializer)
  ..add(_117.AuditFileUpdatePushMessageAuditFileUpdateType.serializer)
  ..add(_118.AuditUpdatedPushMessage.serializer)
  ..add(_119.CaseEventFileUpdatePushMessage.serializer)
  ..add(_120.CaseEventFileUpdatePushMessageCaseEventFileUpdateType.serializer)
  ..add(_121.CaseEventUpdatePushMessage.serializer)
  ..add(_122.CaseEventUpdateType.serializer)
  ..add(_123.CaseRequirementsUpdatedPushMessage.serializer)
  ..add(_124.CaseScheduleUpdatePushMessage.serializer)
  ..add(_125.ConversationUpdatedPushMessage.serializer)
  ..add(_126.ExportLogFilePushMessage.serializer)
  ..add(_127.ExportLogFilePushMessageFileUpdateType.serializer)
  ..add(_128.FacilityUpdatedPushMessage.serializer)
  ..add(_129.ImportLogFilePushMessage.serializer)
  ..add(_130.ImportLogFilePushMessageFileUpdateType.serializer)
  ..add(_131.IssueRegeneratedPushMessage.serializer)
  ..add(_132.MessageAddedPushMessage.serializer)
  ..add(_133.MessagesReadUnreadPushMessage.serializer)
  ..add(_134.NoteAddedUpdatedPushMessage.serializer)
  ..add(_135.OrderDetailPushMessage.serializer)
  ..add(_136.OrderFilePushMessage.serializer)
  ..add(_137.OrderFilePushMessageFileUpdateType.serializer)
  ..add(_138.RefreshConversationListPushMessage.serializer)
  ..add(_139.ShipmentFileUpdatePushMessage.serializer)
  ..add(_140.ShipmentFileUpdatePushMessageFileUpdateType.serializer)
  ..add(_141.StockSummaryKeyUpdatedPushMessage.serializer)
  ..add(_142.UiSetupUpdatedPushMessage.serializer)
  ..add(_143.MovePresenceEvent.serializer)
  ..add(_144.PresenceEventType.serializer)
  ..add(_145.MovePresence.serializer));

// ignore_for_file: implementation_imports,always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
