import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:modux/modux.dart';
import 'package:movemedical_model/app.dart' as _0;
import 'package:movemedical_api/command.dart' as _1;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_response.dart'
    as _2;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_response.dart'
    as _3;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_inv_transfer_type.dart'
    as _4;
import 'package:movemedical_api/model/order_reason.dart' as _5;
import 'package:movemedical_api/model/sql/enums/order_reason_group.dart' as _6;
import 'package:movemedical_api/model/inventory_type.dart' as _7;
import 'package:movemedical_api/model/sql/enums/sales_order_inventory_source.dart'
    as _8;
import 'package:movemedical_api/model/shipping_service.dart' as _9;
import 'package:movemedical_api/model/sql/enums/move_item_class.dart' as _10;
import 'package:movemedical_api/model/sql/enums/move_item_type.dart' as _11;
import 'package:movemedical_api/model/sql/enums/location_type.dart' as _12;
import 'package:movemedical_api/model/sql/enums/facility_type.dart' as _13;
import 'package:movemedical_api/model/location.dart' as _14;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user.dart'
    as _15;
import 'package:movemedical_api/model/sql/enums/user_perspective.dart' as _16;
import 'package:movemedical_api/model/contact.dart' as _17;
import 'package:movemedical_api/model/sql/enums/contact_type.dart' as _18;
import 'package:movemedical_api/model/general_contact_type.dart' as _19;
import 'package:movemedical_api/model/email.dart' as _20;
import 'package:movemedical_api/model/person_name.dart' as _21;
import 'package:movemedical_api/model/sql/enums/sso_type.dart' as _22;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_info.dart'
    as _23;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart'
    as _24;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_unit.dart'
    as _25;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user_permissions.dart'
    as _26;
import 'package:movemedical_api/model/system_admin.dart' as _27;
import 'package:movemedical_api/model/ae.dart' as _28;
import 'package:movemedical_api/model/sql/enums/org_type.dart' as _29;
import 'package:movemedical_api/model/phone_number.dart' as _30;
import 'package:movemedical_api/model/hcp.dart' as _31;
import 'package:movemedical_api/model/sql/enums/hcp_type.dart' as _32;
import 'package:movemedical_api/model/hcr.dart' as _33;
import 'package:movemedical_api/model/sql/enums/hcr_type.dart' as _34;
import 'package:movemedical_api/model/dce.dart' as _35;
import 'package:movemedical_api/model/removeOrRefactor/consumer.dart' as _36;
import 'package:movemedical_api/model/ui_client_configuration.dart' as _37;
import 'package:movemedical_api/model/sql/enums/ui_client_configuration_type.dart'
    as _38;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_dashboard_widget.dart'
    as _39;
import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart'
    as _40;
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart'
    as _41;
import 'package:movemedical_api/model/sql/enums/mobile_report.dart' as _42;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_request.dart'
    as _43;
import 'package:movemedical_model/nav.dart' as _44;
import 'package:movemedical_model/splash.dart' as _45;
import 'package:movemedical_model/auth/login.dart' as _46;
import 'package:movemedical_model/dashboard/dashboard.dart' as _47;
import 'package:movemedical_model/scaffold/scaffold.dart' as _48;
import 'package:movemedical_model/scaffold/drawer.dart' as _49;
import 'package:movemedical_model/scaffold/bottom_bar.dart' as _50;
import 'package:movemedical_model/messages/list.dart' as _51;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_request.dart'
    as _52;
import 'package:movemedical_api/model/sql/enums/attributable_type.dart' as _53;
import 'package:movemedical_api/model/pagination_params.dart' as _54;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_response.dart'
    as _55;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_conversation.dart'
    as _56;
import 'package:movemedical_api/model/attributable_object.dart' as _57;
import 'package:movemedical_model/messages/list_filter.dart' as _58;
import 'package:movemedical_model/messages/convo_update.dart' as _59;
import 'package:movemedical_model/messages/convo.dart' as _60;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_request.dart'
    as _61;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_response.dart'
    as _62;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_participant.dart'
    as _63;
import 'package:movemedical_api/model/removeOrRefactor/message.dart' as _64;
import 'package:movemedical_api/model/removeOrRefactor/message_message_participant.dart'
    as _65;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_display_rules.dart'
    as _66;
import 'package:movemedical_model/auth/mod.dart' as _67;
import 'package:movemedical_model/schedule/mod.dart' as _68;
import 'package:movemedical_model/schedule/list.dart' as _69;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_request.dart'
    as _70;
import 'package:movemedical_api/model/sql/enums/body_side.dart' as _71;
import 'package:movemedical_api/model/sql/enums/case_event_status.dart' as _72;
import 'package:movemedical_api/model/sql/enums/gender.dart' as _73;
import 'package:movemedical_api/model/order_by_params.dart' as _74;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_order_by.dart'
    as _75;
import 'package:movemedical_api/model/order_by_direction.dart' as _76;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_response.dart'
    as _77;
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_case_event.dart'
    as _78;
import 'package:movemedical_model/schedule/list_filter.dart' as _79;
import 'package:movemedical_model/schedule/detail.dart' as _80;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_request.dart'
    as _81;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_response.dart'
    as _82;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_case_event.dart'
    as _83;
import 'package:movemedical_api/model/case_type.dart' as _84;
import 'package:movemedical_api/model/biz_unit.dart' as _85;
import 'package:movemedical_api/model/org_unit.dart' as _86;
import 'package:movemedical_api/model/removeOrRefactor/hospital.dart' as _87;
import 'package:movemedical_api/model/physician.dart' as _88;
import 'package:movemedical_api/model/address.dart' as _89;
import 'package:movemedical_api/model/patient.dart' as _90;
import 'package:movemedical_api/model/sql/enums/length_measurement_type.dart'
    as _91;
import 'package:movemedical_api/model/sql/enums/weight_measurement_type.dart'
    as _92;
import 'package:movemedical_api/model/hcr_team.dart' as _93;
import 'package:movemedical_api/model/hcr_team_type.dart' as _94;
import 'package:movemedical_api/model/procedure.dart' as _95;
import 'package:movemedical_api/model/sub_procedure.dart' as _96;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_loan.dart'
    as _97;
import 'package:movemedical_api/model/sql/enums/loan_status.dart' as _98;
import 'package:movemedical_api/model/sql/enums/order_status.dart' as _99;
import 'package:movemedical_api/model/insurance.dart' as _100;
import 'package:movemedical_api/model/order_header_lite.dart' as _101;
import 'package:movemedical_api/model/customer_address.dart' as _102;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_event.dart'
    as _103;
import 'package:movemedical_api/model/sql/enums/event_type.dart' as _104;
import 'package:movemedical_api/model/sql/enums/event_status.dart' as _105;
import 'package:movemedical_api/model/sql/enums/event_state.dart' as _106;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_display_rules.dart'
    as _107;
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_case_doc.dart'
    as _108;
import 'package:movemedical_model/messages/mod.dart' as _109;
import 'package:movemedical_model/directory/mod.dart' as _110;
import 'package:movemedical_api/state/push.dart' as _111;
import 'package:movemedical_api/model/push/audit_file_push_message.dart'
    as _112;
import 'package:movemedical_api/model/push/audit_file_push_message_file_update_type.dart'
    as _113;
import 'package:movemedical_api/model/push/audit_file_update_push_message.dart'
    as _114;
import 'package:movemedical_api/model/push/audit_file_update_push_message_audit_file_update_type.dart'
    as _115;
import 'package:movemedical_api/model/push/audit_updated_push_message.dart'
    as _116;
import 'package:movemedical_api/model/push/case_event_file_update_push_message.dart'
    as _117;
import 'package:movemedical_api/model/push/case_event_file_update_push_message_case_event_file_update_type.dart'
    as _118;
import 'package:movemedical_api/model/push/case_event_update_push_message.dart'
    as _119;
import 'package:movemedical_api/model/push/case_event_update_type.dart' as _120;
import 'package:movemedical_api/model/push/case_requirements_updated_push_message.dart'
    as _121;
import 'package:movemedical_api/model/push/case_schedule_update_push_message.dart'
    as _122;
import 'package:movemedical_api/model/push/conversation_updated_push_message.dart'
    as _123;
import 'package:movemedical_api/model/push/export_log_file_push_message.dart'
    as _124;
import 'package:movemedical_api/model/push/export_log_file_push_message_file_update_type.dart'
    as _125;
import 'package:movemedical_api/model/push/facility_updated_push_message.dart'
    as _126;
import 'package:movemedical_api/model/push/import_log_file_push_message.dart'
    as _127;
import 'package:movemedical_api/model/push/import_log_file_push_message_file_update_type.dart'
    as _128;
import 'package:movemedical_api/model/push/issue_regenerated_push_message.dart'
    as _129;
import 'package:movemedical_api/model/push/message_added_push_message.dart'
    as _130;
import 'package:movemedical_api/model/push/messages_read_unread_push_message.dart'
    as _131;
import 'package:movemedical_api/model/push/note_added_updated_push_message.dart'
    as _132;
import 'package:movemedical_api/model/push/order_detail_push_message.dart'
    as _133;
import 'package:movemedical_api/model/push/order_file_push_message.dart'
    as _134;
import 'package:movemedical_api/model/push/order_file_push_message_file_update_type.dart'
    as _135;
import 'package:movemedical_api/model/push/refresh_conversation_list_push_message.dart'
    as _136;
import 'package:movemedical_api/model/push/shipment_file_update_push_message.dart'
    as _137;
import 'package:movemedical_api/model/push/shipment_file_update_push_message_file_update_type.dart'
    as _138;
import 'package:movemedical_api/model/push/stock_summary_key_updated_push_message.dart'
    as _139;
import 'package:movemedical_api/model/push/ui_setup_updated_push_message.dart'
    as _140;
import 'package:movemedical_api/model/essentials/intraop/move_presence_event.dart'
    as _141;
import 'package:movemedical_api/model/essentials/intraop/presence_event_type.dart'
    as _142;
import 'package:movemedical_api/model/essentials/intraop/move_presence.dart'
    as _143;

SerializersBuilder $serializers() => (Serializers().toBuilder()
  ..addBuilderFactory(FullType(BuiltList, [FullType(_7.InventoryType)]),
      () => ListBuilder<_7.InventoryType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_10.MoveItemClass)]),
      () => ListBuilder<_10.MoveItemClass>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_11.MoveItemType)]),
      () => ListBuilder<_11.MoveItemType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_12.LocationType)]),
      () => ListBuilder<_12.LocationType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_13.FacilityType)]),
      () => ListBuilder<_13.FacilityType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_14.Location)]),
      () => ListBuilder<_14.Location>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_4.GetUiSetupAllApiInvTransferType)]),
      () => ListBuilder<_4.GetUiSetupAllApiInvTransferType>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_24.GetUiSetupAllApiBizUnit)]),
      () => ListBuilder<_24.GetUiSetupAllApiBizUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_25.GetUiSetupAllApiOrgUnit)]),
      () => ListBuilder<_25.GetUiSetupAllApiOrgUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_37.UiClientConfiguration)]),
      () => ListBuilder<_37.UiClientConfiguration>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_39.GetUiSetupMobileApiDashboardWidget)]),
      () => ListBuilder<_39.GetUiSetupMobileApiDashboardWidget>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_41.MobileNavigationElement)]),
      () => ListBuilder<_41.MobileNavigationElement>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_42.MobileReport)]),
      () => ListBuilder<_42.MobileReport>())
  ..addBuilderFactory(FullType(BuiltList, []), () => ListBuilder<String>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_57.AttributableObject)]),
      () => ListBuilder<_57.AttributableObject>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_56.ListConversationsApiConversation)]),
      () => ListBuilder<_56.ListConversationsApiConversation>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_63.GetConversationApiParticipant)]),
      () => ListBuilder<_63.GetConversationApiParticipant>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_65.MessageMessageParticipant)]),
      () => ListBuilder<_65.MessageMessageParticipant>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_64.Message)]),
      () => ListBuilder<_64.Message>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_71.BodySide)]),
      () => ListBuilder<_71.BodySide>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_72.CaseEventStatus)]),
      () => ListBuilder<_72.CaseEventStatus>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_78.ListCaseEventsApiCaseEvent)]),
      () => ListBuilder<_78.ListCaseEventsApiCaseEvent>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_101.OrderHeaderLite)]),
      () => ListBuilder<_101.OrderHeaderLite>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_108.GetCaseEventDetailApiCaseDoc)]),
      () => ListBuilder<_108.GetCaseEventDetailApiCaseDoc>())
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
      FullType(_1.ApiCommand, [FullType(_43.GetUiSetupMobileApiRequest)]),
      () => _1.ApiCommandBuilder<_43.GetUiSetupMobileApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_52.ListConversationsApiRequest)]),
      () => _1.ApiCommandBuilder<_52.ListConversationsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_61.GetConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_61.GetConversationApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_70.ListCaseEventsApiRequest)]),
      () => _1.ApiCommandBuilder<_70.ListCaseEventsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_81.GetCaseEventDetailApiRequest)]),
      () => _1.ApiCommandBuilder<_81.GetCaseEventDetailApiRequest>())
  ..addBuilderFactory(FullType(_1.ApiResult, [FullType(_1.LoginResponse)]),
      () => _1.ApiResultBuilder<_1.LoginResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_2.GetUiSetupMobileApiResponse)]),
      () => _1.ApiResultBuilder<_2.GetUiSetupMobileApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_55.ListConversationsApiResponse)]),
      () => _1.ApiResultBuilder<_55.ListConversationsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_62.GetConversationApiResponse)]),
      () => _1.ApiResultBuilder<_62.GetConversationApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_77.ListCaseEventsApiResponse)]),
      () => _1.ApiResultBuilder<_77.ListCaseEventsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_82.GetCaseEventDetailApiResponse)]),
      () => _1.ApiResultBuilder<_82.GetCaseEventDetailApiResponse>())
  ..add(_2.GetUiSetupMobileApiResponse.serializer)
  ..add(_3.GetUiSetupAllApiResponse.serializer)
  ..add(_4.GetUiSetupAllApiInvTransferType.serializer)
  ..add(_5.OrderReason.serializer)
  ..add(_6.OrderReasonGroup.serializer)
  ..add(_7.InventoryType.serializer)
  ..add(_8.SalesOrderInventorySource.serializer)
  ..add(_9.ShippingService.serializer)
  ..add(_10.MoveItemClass.serializer)
  ..add(_11.MoveItemType.serializer)
  ..add(_12.LocationType.serializer)
  ..add(_13.FacilityType.serializer)
  ..add(_14.Location.serializer)
  ..add(_15.GetUiSetupAllApiUser.serializer)
  ..add(_16.UserPerspective.serializer)
  ..add(_17.Contact.serializer)
  ..add(_18.ContactType.serializer)
  ..add(_19.GeneralContactType.serializer)
  ..add(_20.Email.serializer)
  ..add(_21.PersonName.serializer)
  ..add(_22.SSOType.serializer)
  ..add(_23.GetUiSetupAllApiOrgInfo.serializer)
  ..add(_24.GetUiSetupAllApiBizUnit.serializer)
  ..add(_25.GetUiSetupAllApiOrgUnit.serializer)
  ..add(_26.GetUiSetupAllApiUserPermissions.serializer)
  ..add(_27.SystemAdmin.serializer)
  ..add(_28.Ae.serializer)
  ..add(_29.OrgType.serializer)
  ..add(_30.PhoneNumber.serializer)
  ..add(_31.Hcp.serializer)
  ..add(_32.HcpType.serializer)
  ..add(_33.Hcr.serializer)
  ..add(_34.HcrType.serializer)
  ..add(_35.Dce.serializer)
  ..add(_36.Consumer.serializer)
  ..add(_37.UiClientConfiguration.serializer)
  ..add(_38.UiClientConfigurationType.serializer)
  ..add(_39.GetUiSetupMobileApiDashboardWidget.serializer)
  ..add(_40.MobileDashboardWidgetType.serializer)
  ..add(_41.MobileNavigationElement.serializer)
  ..add(_42.MobileReport.serializer)
  ..add(_43.GetUiSetupMobileApiRequest.serializer)
  ..add(_44.NavState.serializer)
  ..add(_45.SplashState.serializer)
  ..add(_46.LoginState.serializer)
  ..add(_47.DashboardState.serializer)
  ..add(_48.ScaffoldState.serializer)
  ..add(_49.DrawerState.serializer)
  ..add(_50.BottomBarState.serializer)
  ..add(_51.ConversationListState.serializer)
  ..add(_52.ListConversationsApiRequest.serializer)
  ..add(_53.AttributableType.serializer)
  ..add(_54.PaginationParams.serializer)
  ..add(_55.ListConversationsApiResponse.serializer)
  ..add(_56.ListConversationsApiConversation.serializer)
  ..add(_57.AttributableObject.serializer)
  ..add(_58.ConversationListFilterState.serializer)
  ..add(_59.UpdateConversationState.serializer)
  ..add(_60.ConversationState.serializer)
  ..add(_61.GetConversationApiRequest.serializer)
  ..add(_62.GetConversationApiResponse.serializer)
  ..add(_63.GetConversationApiParticipant.serializer)
  ..add(_64.Message.serializer)
  ..add(_65.MessageMessageParticipant.serializer)
  ..add(_66.GetConversationApiDisplayRules.serializer)
  ..add(_67.AuthState.serializer)
  ..add(_68.ScheduleState.serializer)
  ..add(_69.CaseEventListState.serializer)
  ..add(_70.ListCaseEventsApiRequest.serializer)
  ..add(_71.BodySide.serializer)
  ..add(_72.CaseEventStatus.serializer)
  ..add(_73.Gender.serializer)
  ..add(_74.OrderByParams.serializer)
  ..addBuilderFactory(
      FullType(_74.OrderByParams, [FullType(_75.ListCaseEventsApiOrderBy)]),
      () => _74.OrderByParamsBuilder<_75.ListCaseEventsApiOrderBy>())
  ..add(_75.ListCaseEventsApiOrderBy.serializer)
  ..add(_76.OrderByDirection.serializer)
  ..add(_77.ListCaseEventsApiResponse.serializer)
  ..add(_78.ListCaseEventsApiCaseEvent.serializer)
  ..add(_79.CaseEventListFilterState.serializer)
  ..add(_80.CaseEventDetailState.serializer)
  ..add(_81.GetCaseEventDetailApiRequest.serializer)
  ..add(_82.GetCaseEventDetailApiResponse.serializer)
  ..add(_83.GetCaseEventDetailApiCaseEvent.serializer)
  ..add(_84.CaseType.serializer)
  ..add(_85.BizUnit.serializer)
  ..add(_86.OrgUnit.serializer)
  ..add(_87.Hospital.serializer)
  ..add(_88.Physician.serializer)
  ..add(_89.Address.serializer)
  ..add(_90.Patient.serializer)
  ..add(_91.LengthMeasurementType.serializer)
  ..add(_92.WeightMeasurementType.serializer)
  ..add(_93.HcrTeam.serializer)
  ..add(_94.HcrTeamType.serializer)
  ..add(_95.Procedure.serializer)
  ..add(_96.SubProcedure.serializer)
  ..add(_97.GetCaseEventDetailApiLoan.serializer)
  ..add(_98.LoanStatus.serializer)
  ..add(_99.OrderStatus.serializer)
  ..add(_100.Insurance.serializer)
  ..add(_101.OrderHeaderLite.serializer)
  ..add(_102.CustomerAddress.serializer)
  ..add(_103.GetCaseEventDetailApiEvent.serializer)
  ..add(_104.EventType.serializer)
  ..add(_105.EventStatus.serializer)
  ..add(_106.EventState.serializer)
  ..add(_107.GetCaseEventDetailApiDisplayRules.serializer)
  ..add(_108.GetCaseEventDetailApiCaseDoc.serializer)
  ..add(_109.MessagesState.serializer)
  ..add(_110.DirectoryState.serializer)
  ..add(_111.PushPayloads.serializer)
  ..add(_112.AuditFilePushMessage.serializer)
  ..add(_113.AuditFilePushMessageFileUpdateType.serializer)
  ..add(_114.AuditFileUpdatePushMessage.serializer)
  ..add(_115.AuditFileUpdatePushMessageAuditFileUpdateType.serializer)
  ..add(_116.AuditUpdatedPushMessage.serializer)
  ..add(_117.CaseEventFileUpdatePushMessage.serializer)
  ..add(_118.CaseEventFileUpdatePushMessageCaseEventFileUpdateType.serializer)
  ..add(_119.CaseEventUpdatePushMessage.serializer)
  ..add(_120.CaseEventUpdateType.serializer)
  ..add(_121.CaseRequirementsUpdatedPushMessage.serializer)
  ..add(_122.CaseScheduleUpdatePushMessage.serializer)
  ..add(_123.ConversationUpdatedPushMessage.serializer)
  ..add(_124.ExportLogFilePushMessage.serializer)
  ..add(_125.ExportLogFilePushMessageFileUpdateType.serializer)
  ..add(_126.FacilityUpdatedPushMessage.serializer)
  ..add(_127.ImportLogFilePushMessage.serializer)
  ..add(_128.ImportLogFilePushMessageFileUpdateType.serializer)
  ..add(_129.IssueRegeneratedPushMessage.serializer)
  ..add(_130.MessageAddedPushMessage.serializer)
  ..add(_131.MessagesReadUnreadPushMessage.serializer)
  ..add(_132.NoteAddedUpdatedPushMessage.serializer)
  ..add(_133.OrderDetailPushMessage.serializer)
  ..add(_134.OrderFilePushMessage.serializer)
  ..add(_135.OrderFilePushMessageFileUpdateType.serializer)
  ..add(_136.RefreshConversationListPushMessage.serializer)
  ..add(_137.ShipmentFileUpdatePushMessage.serializer)
  ..add(_138.ShipmentFileUpdatePushMessageFileUpdateType.serializer)
  ..add(_139.StockSummaryKeyUpdatedPushMessage.serializer)
  ..add(_140.UiSetupUpdatedPushMessage.serializer)
  ..add(_141.MovePresenceEvent.serializer)
  ..add(_142.PresenceEventType.serializer)
  ..add(_143.MovePresence.serializer));

// ignore_for_file: implementation_imports,always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
