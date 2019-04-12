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
import 'package:movemedical_api/model/essentials/model/api/get_consignment_loan_fields_api_loan_field_data.dart'
    as _15;
import 'package:movemedical_api/model/essentials/model/api/get_consignment_loan_fields_api_loan_field.dart'
    as _16;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user.dart'
    as _17;
import 'package:movemedical_api/model/sql/enums/user_perspective.dart' as _18;
import 'package:movemedical_api/model/essentials/i18n/move_locale.dart' as _19;
import 'package:movemedical_api/model/essentials/i18n/move_date_region.dart'
    as _20;
import 'package:movemedical_api/model/contact.dart' as _21;
import 'package:movemedical_api/model/sql/enums/contact_type.dart' as _22;
import 'package:movemedical_api/model/general_contact_type.dart' as _23;
import 'package:movemedical_api/model/email.dart' as _24;
import 'package:movemedical_api/model/person_name.dart' as _25;
import 'package:movemedical_api/model/sql/enums/sso_type.dart' as _26;
import 'package:movemedical_api/model/sql/enums/mfa_type.dart' as _27;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_info.dart'
    as _28;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart'
    as _29;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_unit.dart'
    as _30;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user_permissions.dart'
    as _31;
import 'package:movemedical_api/model/system_admin.dart' as _32;
import 'package:movemedical_api/model/ae.dart' as _33;
import 'package:movemedical_api/model/sql/enums/org_type.dart' as _34;
import 'package:movemedical_api/model/phone_number.dart' as _35;
import 'package:movemedical_api/model/hcp.dart' as _36;
import 'package:movemedical_api/model/sql/enums/hcp_type.dart' as _37;
import 'package:movemedical_api/model/hcr.dart' as _38;
import 'package:movemedical_api/model/sql/enums/hcr_type.dart' as _39;
import 'package:movemedical_api/model/dce.dart' as _40;
import 'package:movemedical_api/model/remove_or_refactor/consumer.dart' as _41;
import 'package:movemedical_api/model/ui_client_configuration.dart' as _42;
import 'package:movemedical_api/model/sql/enums/ui_client_configuration_type.dart'
    as _43;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_dashboard_widget.dart'
    as _44;
import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart'
    as _45;
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart'
    as _46;
import 'package:movemedical_api/model/sql/enums/mobile_report.dart' as _47;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_request.dart'
    as _48;
import 'package:movemedical_api/model/sql/enums/mobile_platform.dart' as _49;
import 'package:movemedical_model/nav.dart' as _50;
import 'package:movemedical_model/splash.dart' as _51;
import 'package:movemedical_model/auth/login.dart' as _52;
import 'package:movemedical_model/dashboard/dashboard.dart' as _53;
import 'package:movemedical_model/scaffold/scaffold.dart' as _54;
import 'package:movemedical_model/scaffold/drawer.dart' as _55;
import 'package:movemedical_model/scaffold/bottom_bar.dart' as _56;
import 'package:movemedical_model/messages/list.dart' as _57;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_request.dart'
    as _58;
import 'package:movemedical_api/model/sql/enums/attributable_type.dart' as _59;
import 'package:movemedical_api/model/pagination_params.dart' as _60;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_response.dart'
    as _61;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_conversation.dart'
    as _62;
import 'package:movemedical_api/model/attributable_object.dart' as _63;
import 'package:movemedical_model/messages/list_filter.dart' as _64;
import 'package:movemedical_model/messages/convo_update.dart' as _65;
import 'package:movemedical_model/messages/convo.dart' as _66;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_request.dart'
    as _67;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_response.dart'
    as _68;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_participant.dart'
    as _69;
import 'package:movemedical_api/model/remove_or_refactor/message.dart' as _70;
import 'package:movemedical_api/model/remove_or_refactor/message_message_participant.dart'
    as _71;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_display_rules.dart'
    as _72;
import 'package:movemedical_model/auth/mod.dart' as _73;
import 'package:movemedical_model/schedule/mod.dart' as _74;
import 'package:movemedical_model/schedule/list.dart' as _75;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_request.dart'
    as _76;
import 'package:movemedical_api/model/sql/enums/body_side.dart' as _77;
import 'package:movemedical_api/model/sql/enums/case_event_status.dart' as _78;
import 'package:movemedical_api/model/sql/enums/gender.dart' as _79;
import 'package:movemedical_api/model/order_by_params.dart' as _80;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_order_by.dart'
    as _81;
import 'package:movemedical_api/model/order_by_direction.dart' as _82;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_response.dart'
    as _83;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_case_event.dart'
    as _84;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_count_data.dart'
    as _85;
import 'package:movemedical_model/schedule/list_filter.dart' as _86;
import 'package:movemedical_model/schedule/detail.dart' as _87;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_request.dart'
    as _88;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_response.dart'
    as _89;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_case_event.dart'
    as _90;
import 'package:movemedical_api/model/case_type.dart' as _91;
import 'package:movemedical_api/model/biz_unit.dart' as _92;
import 'package:movemedical_api/model/org_unit.dart' as _93;
import 'package:movemedical_api/model/remove_or_refactor/hospital.dart' as _94;
import 'package:movemedical_api/model/physician.dart' as _95;
import 'package:movemedical_api/model/address.dart' as _96;
import 'package:movemedical_api/model/patient.dart' as _97;
import 'package:movemedical_api/model/sql/enums/length_measurement_type.dart'
    as _98;
import 'package:movemedical_api/model/sql/enums/weight_measurement_type.dart'
    as _99;
import 'package:movemedical_api/model/hcr_team.dart' as _100;
import 'package:movemedical_api/model/hcr_team_type.dart' as _101;
import 'package:movemedical_api/model/procedure.dart' as _102;
import 'package:movemedical_api/model/sub_procedure.dart' as _103;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_loan.dart'
    as _104;
import 'package:movemedical_api/model/sql/enums/loan_status.dart' as _105;
import 'package:movemedical_api/model/sql/enums/order_status.dart' as _106;
import 'package:movemedical_api/model/insurance.dart' as _107;
import 'package:movemedical_api/model/order_header_lite.dart' as _108;
import 'package:movemedical_api/model/customer_address.dart' as _109;
import 'package:movemedical_api/model/essentials/model/api/case_custom_field_value.dart'
    as _110;
import 'package:movemedical_api/model/sql/enums/custom_field_data_type.dart'
    as _111;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_loan_return_data.dart'
    as _112;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_event.dart'
    as _113;
import 'package:movemedical_api/model/sql/enums/event_type.dart' as _114;
import 'package:movemedical_api/model/sql/enums/event_status.dart' as _115;
import 'package:movemedical_api/model/sql/enums/event_state.dart' as _116;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_display_rules.dart'
    as _117;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_case_doc.dart'
    as _118;
import 'package:movemedical_model/messages/mod.dart' as _119;
import 'package:movemedical_model/directory/mod.dart' as _120;
import 'package:movemedical_api/state/push.dart' as _121;
import 'package:movemedical_api/model/push/audit_file_push_message.dart'
    as _122;
import 'package:movemedical_api/model/push/audit_file_push_message_file_update_type.dart'
    as _123;
import 'package:movemedical_api/model/push/audit_file_update_push_message.dart'
    as _124;
import 'package:movemedical_api/model/push/audit_file_update_push_message_audit_file_update_type.dart'
    as _125;
import 'package:movemedical_api/model/push/audit_updated_push_message.dart'
    as _126;
import 'package:movemedical_api/model/push/case_event_file_update_push_message.dart'
    as _127;
import 'package:movemedical_api/model/push/case_event_file_update_push_message_case_event_file_update_type.dart'
    as _128;
import 'package:movemedical_api/model/push/case_event_update_push_message.dart'
    as _129;
import 'package:movemedical_api/model/push/case_event_update_type.dart' as _130;
import 'package:movemedical_api/model/push/case_requirements_updated_push_message.dart'
    as _131;
import 'package:movemedical_api/model/push/case_schedule_update_push_message.dart'
    as _132;
import 'package:movemedical_api/model/push/conversation_updated_push_message.dart'
    as _133;
import 'package:movemedical_api/model/push/create_pick_finished_push_message.dart'
    as _134;
import 'package:movemedical_api/model/push/export_log_file_push_message.dart'
    as _135;
import 'package:movemedical_api/model/push/export_log_file_push_message_file_update_type.dart'
    as _136;
import 'package:movemedical_api/model/push/facility_updated_push_message.dart'
    as _137;
import 'package:movemedical_api/model/push/import_log_file_push_message.dart'
    as _138;
import 'package:movemedical_api/model/push/import_log_file_push_message_file_update_type.dart'
    as _139;
import 'package:movemedical_api/model/push/issue_regenerated_push_message.dart'
    as _140;
import 'package:movemedical_api/model/push/item_file_update_push_message.dart'
    as _141;
import 'package:movemedical_api/model/push/item_file_update_push_message_update_type.dart'
    as _142;
import 'package:movemedical_api/model/push/loan_detail_push_message.dart'
    as _143;
import 'package:movemedical_api/model/push/loan_lines_updated_push_message.dart'
    as _144;
import 'package:movemedical_api/model/push/message_added_push_message.dart'
    as _145;
import 'package:movemedical_api/model/push/messages_read_unread_push_message.dart'
    as _146;
import 'package:movemedical_api/model/push/messaging_badge_updated_push_message.dart'
    as _147;
import 'package:movemedical_api/model/push/note_added_updated_push_message.dart'
    as _148;
import 'package:movemedical_api/model/push/order_detail_push_message.dart'
    as _149;
import 'package:movemedical_api/model/push/order_file_push_message.dart'
    as _150;
import 'package:movemedical_api/model/push/order_file_push_message_file_update_type.dart'
    as _151;
import 'package:movemedical_api/model/push/refresh_conversation_list_push_message.dart'
    as _152;
import 'package:movemedical_api/model/push/shipment_file_update_push_message.dart'
    as _153;
import 'package:movemedical_api/model/push/shipment_file_update_push_message_file_update_type.dart'
    as _154;
import 'package:movemedical_api/model/push/shipment_updated_push_message.dart'
    as _155;
import 'package:movemedical_api/model/push/stock_summary_key_updated_push_message.dart'
    as _156;
import 'package:movemedical_api/model/push/ui_setup_updated_push_message.dart'
    as _157;
import 'package:movemedical_api/model/essentials/intraop/move_presence_event.dart'
    as _158;
import 'package:movemedical_api/model/essentials/intraop/presence_event_type.dart'
    as _159;
import 'package:movemedical_api/model/essentials/intraop/move_presence.dart'
    as _160;

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
  ..addBuilderFactory(FullType(BuiltList, []), () => ListBuilder<String>())
  ..addBuilderFactory(
      FullType(
          BuiltList, [FullType(_15.GetConsignmentLoanFieldsApiLoanFieldData)]),
      () => ListBuilder<_15.GetConsignmentLoanFieldsApiLoanFieldData>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_29.GetUiSetupAllApiBizUnit)]),
      () => ListBuilder<_29.GetUiSetupAllApiBizUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_30.GetUiSetupAllApiOrgUnit)]),
      () => ListBuilder<_30.GetUiSetupAllApiOrgUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_42.UiClientConfiguration)]),
      () => ListBuilder<_42.UiClientConfiguration>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_44.GetUiSetupMobileApiDashboardWidget)]),
      () => ListBuilder<_44.GetUiSetupMobileApiDashboardWidget>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_46.MobileNavigationElement)]),
      () => ListBuilder<_46.MobileNavigationElement>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_47.MobileReport)]),
      () => ListBuilder<_47.MobileReport>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_63.AttributableObject)]),
      () => ListBuilder<_63.AttributableObject>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_62.ListConversationsApiConversation)]),
      () => ListBuilder<_62.ListConversationsApiConversation>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_69.GetConversationApiParticipant)]),
      () => ListBuilder<_69.GetConversationApiParticipant>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_71.MessageMessageParticipant)]),
      () => ListBuilder<_71.MessageMessageParticipant>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_70.Message)]),
      () => ListBuilder<_70.Message>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_77.BodySide)]),
      () => ListBuilder<_77.BodySide>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_78.CaseEventStatus)]),
      () => ListBuilder<_78.CaseEventStatus>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_84.ListCaseEventsApiCaseEvent)]),
      () => ListBuilder<_84.ListCaseEventsApiCaseEvent>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_85.ListCaseEventsApiCountData)]),
      () => ListBuilder<_85.ListCaseEventsApiCountData>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_108.OrderHeaderLite)]),
      () => ListBuilder<_108.OrderHeaderLite>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_110.CaseCustomFieldValue)]),
      () => ListBuilder<_110.CaseCustomFieldValue>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_118.GetCaseEventDetailApiCaseDoc)]),
      () => ListBuilder<_118.GetCaseEventDetailApiCaseDoc>())
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
      FullType(_1.ApiCommand, [FullType(_48.GetUiSetupMobileApiRequest)]),
      () => _1.ApiCommandBuilder<_48.GetUiSetupMobileApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_58.ListConversationsApiRequest)]),
      () => _1.ApiCommandBuilder<_58.ListConversationsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_67.GetConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_67.GetConversationApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_76.ListCaseEventsApiRequest)]),
      () => _1.ApiCommandBuilder<_76.ListCaseEventsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_88.GetCaseEventDetailApiRequest)]),
      () => _1.ApiCommandBuilder<_88.GetCaseEventDetailApiRequest>())
  ..addBuilderFactory(FullType(_1.ApiResult, [FullType(_1.LoginResponse)]),
      () => _1.ApiResultBuilder<_1.LoginResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_2.GetUiSetupMobileApiResponse)]),
      () => _1.ApiResultBuilder<_2.GetUiSetupMobileApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_61.ListConversationsApiResponse)]),
      () => _1.ApiResultBuilder<_61.ListConversationsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_68.GetConversationApiResponse)]),
      () => _1.ApiResultBuilder<_68.GetConversationApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_83.ListCaseEventsApiResponse)]),
      () => _1.ApiResultBuilder<_83.ListCaseEventsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_89.GetCaseEventDetailApiResponse)]),
      () => _1.ApiResultBuilder<_89.GetCaseEventDetailApiResponse>())
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
  ..add(_15.GetConsignmentLoanFieldsApiLoanFieldData.serializer)
  ..add(_16.GetConsignmentLoanFieldsApiLoanField.serializer)
  ..add(_17.GetUiSetupAllApiUser.serializer)
  ..add(_18.UserPerspective.serializer)
  ..add(_19.MoveLocale.serializer)
  ..add(_20.MoveDateRegion.serializer)
  ..add(_21.Contact.serializer)
  ..add(_22.ContactType.serializer)
  ..add(_23.GeneralContactType.serializer)
  ..add(_24.Email.serializer)
  ..add(_25.PersonName.serializer)
  ..add(_26.SSOType.serializer)
  ..add(_27.MfaType.serializer)
  ..add(_28.GetUiSetupAllApiOrgInfo.serializer)
  ..add(_29.GetUiSetupAllApiBizUnit.serializer)
  ..add(_30.GetUiSetupAllApiOrgUnit.serializer)
  ..add(_31.GetUiSetupAllApiUserPermissions.serializer)
  ..add(_32.SystemAdmin.serializer)
  ..add(_33.Ae.serializer)
  ..add(_34.OrgType.serializer)
  ..add(_35.PhoneNumber.serializer)
  ..add(_36.Hcp.serializer)
  ..add(_37.HcpType.serializer)
  ..add(_38.Hcr.serializer)
  ..add(_39.HcrType.serializer)
  ..add(_40.Dce.serializer)
  ..add(_41.Consumer.serializer)
  ..add(_42.UiClientConfiguration.serializer)
  ..add(_43.UiClientConfigurationType.serializer)
  ..add(_44.GetUiSetupMobileApiDashboardWidget.serializer)
  ..add(_45.MobileDashboardWidgetType.serializer)
  ..add(_46.MobileNavigationElement.serializer)
  ..add(_47.MobileReport.serializer)
  ..add(_48.GetUiSetupMobileApiRequest.serializer)
  ..add(_49.MobilePlatform.serializer)
  ..add(_50.NavState.serializer)
  ..add(_51.SplashState.serializer)
  ..add(_52.LoginState.serializer)
  ..add(_53.DashboardState.serializer)
  ..add(_54.ScaffoldState.serializer)
  ..add(_55.DrawerState.serializer)
  ..add(_56.BottomBarState.serializer)
  ..add(_57.ConversationListState.serializer)
  ..add(_58.ListConversationsApiRequest.serializer)
  ..add(_59.AttributableType.serializer)
  ..add(_60.PaginationParams.serializer)
  ..add(_61.ListConversationsApiResponse.serializer)
  ..add(_62.ListConversationsApiConversation.serializer)
  ..add(_63.AttributableObject.serializer)
  ..add(_64.ConversationListFilterState.serializer)
  ..add(_65.UpdateConversationState.serializer)
  ..add(_66.ConversationState.serializer)
  ..add(_67.GetConversationApiRequest.serializer)
  ..add(_68.GetConversationApiResponse.serializer)
  ..add(_69.GetConversationApiParticipant.serializer)
  ..add(_70.Message.serializer)
  ..add(_71.MessageMessageParticipant.serializer)
  ..add(_72.GetConversationApiDisplayRules.serializer)
  ..add(_73.AuthState.serializer)
  ..add(_74.ScheduleState.serializer)
  ..add(_75.CaseEventListState.serializer)
  ..add(_76.ListCaseEventsApiRequest.serializer)
  ..add(_77.BodySide.serializer)
  ..add(_78.CaseEventStatus.serializer)
  ..add(_79.Gender.serializer)
  ..add(_80.OrderByParams.serializer)
  ..addBuilderFactory(
      FullType(_80.OrderByParams, [FullType(_81.ListCaseEventsApiOrderBy)]),
      () => _80.OrderByParamsBuilder<_81.ListCaseEventsApiOrderBy>())
  ..add(_81.ListCaseEventsApiOrderBy.serializer)
  ..add(_82.OrderByDirection.serializer)
  ..add(_83.ListCaseEventsApiResponse.serializer)
  ..add(_84.ListCaseEventsApiCaseEvent.serializer)
  ..add(_85.ListCaseEventsApiCountData.serializer)
  ..add(_86.CaseEventListFilterState.serializer)
  ..add(_87.CaseEventDetailState.serializer)
  ..add(_88.GetCaseEventDetailApiRequest.serializer)
  ..add(_89.GetCaseEventDetailApiResponse.serializer)
  ..add(_90.GetCaseEventDetailApiCaseEvent.serializer)
  ..add(_91.CaseType.serializer)
  ..add(_92.BizUnit.serializer)
  ..add(_93.OrgUnit.serializer)
  ..add(_94.Hospital.serializer)
  ..add(_95.Physician.serializer)
  ..add(_96.Address.serializer)
  ..add(_97.Patient.serializer)
  ..add(_98.LengthMeasurementType.serializer)
  ..add(_99.WeightMeasurementType.serializer)
  ..add(_100.HcrTeam.serializer)
  ..add(_101.HcrTeamType.serializer)
  ..add(_102.Procedure.serializer)
  ..add(_103.SubProcedure.serializer)
  ..add(_104.GetCaseEventDetailApiLoan.serializer)
  ..add(_105.LoanStatus.serializer)
  ..add(_106.OrderStatus.serializer)
  ..add(_107.Insurance.serializer)
  ..add(_108.OrderHeaderLite.serializer)
  ..add(_109.CustomerAddress.serializer)
  ..add(_110.CaseCustomFieldValue.serializer)
  ..add(_111.CustomFieldDataType.serializer)
  ..add(_112.GetCaseEventDetailApiLoanReturnData.serializer)
  ..add(_113.GetCaseEventDetailApiEvent.serializer)
  ..add(_114.EventType.serializer)
  ..add(_115.EventStatus.serializer)
  ..add(_116.EventState.serializer)
  ..add(_117.GetCaseEventDetailApiDisplayRules.serializer)
  ..add(_118.GetCaseEventDetailApiCaseDoc.serializer)
  ..add(_119.MessagesState.serializer)
  ..add(_120.DirectoryState.serializer)
  ..add(_121.PushPayloads.serializer)
  ..add(_122.AuditFilePushMessage.serializer)
  ..add(_123.AuditFilePushMessageFileUpdateType.serializer)
  ..add(_124.AuditFileUpdatePushMessage.serializer)
  ..add(_125.AuditFileUpdatePushMessageAuditFileUpdateType.serializer)
  ..add(_126.AuditUpdatedPushMessage.serializer)
  ..add(_127.CaseEventFileUpdatePushMessage.serializer)
  ..add(_128.CaseEventFileUpdatePushMessageCaseEventFileUpdateType.serializer)
  ..add(_129.CaseEventUpdatePushMessage.serializer)
  ..add(_130.CaseEventUpdateType.serializer)
  ..add(_131.CaseRequirementsUpdatedPushMessage.serializer)
  ..add(_132.CaseScheduleUpdatePushMessage.serializer)
  ..add(_133.ConversationUpdatedPushMessage.serializer)
  ..add(_134.CreatePickFinishedPushMessage.serializer)
  ..add(_135.ExportLogFilePushMessage.serializer)
  ..add(_136.ExportLogFilePushMessageFileUpdateType.serializer)
  ..add(_137.FacilityUpdatedPushMessage.serializer)
  ..add(_138.ImportLogFilePushMessage.serializer)
  ..add(_139.ImportLogFilePushMessageFileUpdateType.serializer)
  ..add(_140.IssueRegeneratedPushMessage.serializer)
  ..add(_141.ItemFileUpdatePushMessage.serializer)
  ..add(_142.ItemFileUpdatePushMessageUpdateType.serializer)
  ..add(_143.LoanDetailPushMessage.serializer)
  ..add(_144.LoanLinesUpdatedPushMessage.serializer)
  ..add(_145.MessageAddedPushMessage.serializer)
  ..add(_146.MessagesReadUnreadPushMessage.serializer)
  ..add(_147.MessagingBadgeUpdatedPushMessage.serializer)
  ..add(_148.NoteAddedUpdatedPushMessage.serializer)
  ..add(_149.OrderDetailPushMessage.serializer)
  ..add(_150.OrderFilePushMessage.serializer)
  ..add(_151.OrderFilePushMessageFileUpdateType.serializer)
  ..add(_152.RefreshConversationListPushMessage.serializer)
  ..add(_153.ShipmentFileUpdatePushMessage.serializer)
  ..add(_154.ShipmentFileUpdatePushMessageFileUpdateType.serializer)
  ..add(_155.ShipmentUpdatedPushMessage.serializer)
  ..add(_156.StockSummaryKeyUpdatedPushMessage.serializer)
  ..add(_157.UiSetupUpdatedPushMessage.serializer)
  ..add(_158.MovePresenceEvent.serializer)
  ..add(_159.PresenceEventType.serializer)
  ..add(_160.MovePresence.serializer));

// ignore_for_file: implementation_imports,always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
