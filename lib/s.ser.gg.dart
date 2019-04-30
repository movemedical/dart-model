import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movemedical_model/app.dart' as _0;
import 'package:movemedical_api/command.dart' as _1;
import 'package:movemedical_api/login.dart' as _2;
import 'package:modux/src/command.dart' as _3;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_response.dart'
    as _4;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_response.dart'
    as _5;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_inv_transfer_type.dart'
    as _6;
import 'package:movemedical_api/model/order_reason.dart' as _7;
import 'package:movemedical_api/model/sql/enums/order_reason_group.dart' as _8;
import 'package:movemedical_api/model/inventory_type.dart' as _9;
import 'package:movemedical_api/model/sql/enums/sales_order_inventory_source.dart'
    as _10;
import 'package:movemedical_api/model/shipping_service.dart' as _11;
import 'package:movemedical_api/model/sql/enums/move_item_class.dart' as _12;
import 'package:movemedical_api/model/sql/enums/move_item_type.dart' as _13;
import 'package:movemedical_api/model/sql/enums/location_type.dart' as _14;
import 'package:movemedical_api/model/sql/enums/facility_type.dart' as _15;
import 'package:movemedical_api/model/location.dart' as _16;
import 'package:movemedical_api/model/essentials/model/api/get_consignment_loan_fields_api_loan_field_data.dart'
    as _17;
import 'package:movemedical_api/model/essentials/model/api/get_consignment_loan_fields_api_loan_field.dart'
    as _18;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user.dart'
    as _19;
import 'package:movemedical_api/model/sql/enums/user_perspective.dart' as _20;
import 'package:movemedical_api/model/essentials/i18n/move_locale.dart' as _21;
import 'package:movemedical_api/model/essentials/i18n/move_date_region.dart'
    as _22;
import 'package:movemedical_api/model/contact.dart' as _23;
import 'package:movemedical_api/model/sql/enums/contact_type.dart' as _24;
import 'package:movemedical_api/model/general_contact_type.dart' as _25;
import 'package:movemedical_api/model/email.dart' as _26;
import 'package:movemedical_api/model/person_name.dart' as _27;
import 'package:movemedical_api/model/sql/enums/sso_type.dart' as _28;
import 'package:movemedical_api/model/sql/enums/mfa_type.dart' as _29;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_info.dart'
    as _30;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart'
    as _31;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_unit.dart'
    as _32;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user_permissions.dart'
    as _33;
import 'package:movemedical_api/model/system_admin.dart' as _34;
import 'package:movemedical_api/model/ae.dart' as _35;
import 'package:movemedical_api/model/sql/enums/org_type.dart' as _36;
import 'package:movemedical_api/model/phone_number.dart' as _37;
import 'package:movemedical_api/model/hcp.dart' as _38;
import 'package:movemedical_api/model/sql/enums/hcp_type.dart' as _39;
import 'package:movemedical_api/model/hcr.dart' as _40;
import 'package:movemedical_api/model/sql/enums/hcr_type.dart' as _41;
import 'package:movemedical_api/model/dce.dart' as _42;
import 'package:movemedical_api/model/remove_or_refactor/consumer.dart' as _43;
import 'package:movemedical_api/model/ui_client_configuration.dart' as _44;
import 'package:movemedical_api/model/sql/enums/ui_client_configuration_type.dart'
    as _45;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_dashboard_widget.dart'
    as _46;
import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart'
    as _47;
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart'
    as _48;
import 'package:movemedical_api/model/sql/enums/mobile_report.dart' as _49;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_request.dart'
    as _50;
import 'package:movemedical_api/model/sql/enums/mobile_platform.dart' as _51;
import 'package:movemedical_model/nav.dart' as _52;
import 'package:movemedical_model/splash.dart' as _53;
import 'package:modux/src/router.dart' as _54;
import 'package:modux/src/action.dart' as _55;
import 'package:movemedical_model/scaffold/scaffold.dart' as _56;
import 'package:movemedical_model/scaffold/drawer.dart' as _57;
import 'package:movemedical_model/auth/login.dart' as _58;
import 'package:movemedical_model/dashboard/dashboard.dart' as _59;
import 'package:movemedical_model/scaffold/bottom_bar.dart' as _60;
import 'package:movemedical_model/dashboard/mod.dart' as _61;
import 'package:movemedical_model/auth/mod.dart' as _62;
import 'package:movemedical_model/scheduling/mod.dart' as _63;
import 'package:movemedical_model/scheduling/case_event/list.dart' as _64;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_request.dart'
    as _65;
import 'package:movemedical_api/model/sql/enums/body_side.dart' as _66;
import 'package:movemedical_api/model/sql/enums/case_event_status.dart' as _67;
import 'package:movemedical_api/model/sql/enums/gender.dart' as _68;
import 'package:movemedical_api/model/pagination_params.dart' as _69;
import 'package:movemedical_api/model/order_by_params.dart' as _70;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_order_by.dart'
    as _71;
import 'package:movemedical_api/model/order_by_direction.dart' as _72;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_response.dart'
    as _73;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_case_event.dart'
    as _74;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_count_data.dart'
    as _75;
import 'package:movemedical_model/scheduling/case_event/list_filter.dart'
    as _76;
import 'package:movemedical_api/model/action/case_event/list_case_types_api_request.dart'
    as _77;
import 'package:movemedical_api/model/action/case_event/list_case_types_api_response.dart'
    as _78;
import 'package:movemedical_api/model/case_type.dart' as _79;
import 'package:movemedical_api/model/action/case_event/list_hospitals_for_scheduling_api_request.dart'
    as _80;
import 'package:movemedical_api/model/action/case_event/list_hospitals_for_scheduling_api_response.dart'
    as _81;
import 'package:movemedical_api/model/remove_or_refactor/hospital.dart' as _82;
import 'package:movemedical_api/model/action/case_event/list_surgeon_physicians_for_scheduling_api_request.dart'
    as _83;
import 'package:movemedical_api/model/action/case_event/list_surgeon_physicians_for_scheduling_api_response.dart'
    as _84;
import 'package:movemedical_api/model/physician.dart' as _85;
import 'package:movemedical_api/model/address.dart' as _86;
import 'package:movemedical_api/model/action/directory/search_hcr_teams_api_request.dart'
    as _87;
import 'package:movemedical_api/model/action/directory/search_hcr_teams_api_response.dart'
    as _88;
import 'package:movemedical_api/model/hcr_team.dart' as _89;
import 'package:movemedical_api/model/hcr_team_type.dart' as _90;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_search_api_request.dart'
    as _91;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_search_api_active_status.dart'
    as _92;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_search_api_order_by.dart'
    as _93;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_search_api_response.dart'
    as _94;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_search_api_procedure.dart'
    as _95;
import 'package:movemedical_api/model/action/case_event/list_sub_procedures_api_request.dart'
    as _96;
import 'package:movemedical_api/model/action/case_event/list_sub_procedures_api_response.dart'
    as _97;
import 'package:movemedical_api/model/sub_procedure.dart' as _98;
import 'package:movemedical_model/scheduling/case_event/create.dart' as _99;
import 'package:movemedical_api/model/action/case_event/create_case_event_api_request.dart'
    as _100;
import 'package:movemedical_api/model/sql/enums/length_measurement_type.dart'
    as _101;
import 'package:movemedical_api/model/sql/enums/weight_measurement_type.dart'
    as _102;
import 'package:movemedical_api/model/sql/enums/ethnicity.dart' as _103;
import 'package:movemedical_api/model/action/case_event/create_case_event_api_insurance.dart'
    as _104;
import 'package:movemedical_api/model/case_custom_value.dart' as _105;
import 'package:movemedical_api/model/procedure.dart' as _106;
import 'package:movemedical_api/model/action/case_event/create_case_event_api_response.dart'
    as _107;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_scheduling_api_request.dart'
    as _108;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_scheduling_api_response.dart'
    as _109;
import 'package:movemedical_model/scheduling/case_event/detail.dart' as _110;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_request.dart'
    as _111;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_response.dart'
    as _112;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_case_event.dart'
    as _113;
import 'package:movemedical_api/model/biz_unit.dart' as _114;
import 'package:movemedical_api/model/org_unit.dart' as _115;
import 'package:movemedical_api/model/patient.dart' as _116;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_loan.dart'
    as _117;
import 'package:movemedical_api/model/sql/enums/loan_status.dart' as _118;
import 'package:movemedical_api/model/sql/enums/order_status.dart' as _119;
import 'package:movemedical_api/model/insurance.dart' as _120;
import 'package:movemedical_api/model/order_header_lite.dart' as _121;
import 'package:movemedical_api/model/customer_address.dart' as _122;
import 'package:movemedical_api/model/essentials/model/api/case_custom_field_value.dart'
    as _123;
import 'package:movemedical_api/model/sql/enums/custom_field_data_type.dart'
    as _124;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_loan_return_data.dart'
    as _125;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_event.dart'
    as _126;
import 'package:movemedical_api/model/sql/enums/event_type.dart' as _127;
import 'package:movemedical_api/model/sql/enums/event_status.dart' as _128;
import 'package:movemedical_api/model/sql/enums/event_state.dart' as _129;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_display_rules.dart'
    as _130;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_case_doc.dart'
    as _131;
import 'package:movemedical_model/messaging/mod.dart' as _132;
import 'package:movemedical_model/messaging/list.dart' as _133;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_request.dart'
    as _134;
import 'package:movemedical_api/model/sql/enums/attributable_type.dart' as _135;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_response.dart'
    as _136;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_conversation.dart'
    as _137;
import 'package:movemedical_api/model/attributable_object.dart' as _138;
import 'package:movemedical_model/messaging/list_filter.dart' as _139;
import 'package:movemedical_model/messaging/update_conversation.dart' as _140;
import 'package:movemedical_model/messaging/detail.dart' as _141;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_request.dart'
    as _142;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_response.dart'
    as _143;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_participant.dart'
    as _144;
import 'package:movemedical_api/model/remove_or_refactor/message.dart' as _145;
import 'package:movemedical_api/model/remove_or_refactor/message_message_participant.dart'
    as _146;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_display_rules.dart'
    as _147;
import 'package:movemedical_model/messaging/create_conversation.dart' as _148;
import 'package:movemedical_api/model/action/messaging/messages/create_conversation_api_request.dart'
    as _149;
import 'package:movemedical_api/model/action/messaging/messages/create_conversation_api_response.dart'
    as _150;
import 'package:movemedical_model/messaging/create_message.dart' as _151;
import 'package:movemedical_api/model/action/messaging/messages/create_message_api_request.dart'
    as _152;
import 'package:movemedical_api/model/action/messaging/messages/create_message_api_response.dart'
    as _153;
import 'package:movemedical_model/directory/mod.dart' as _154;
import 'package:movemedical_api/state/push.dart' as _155;
import 'package:movemedical_api/model/push/audit_file_push_message.dart'
    as _156;
import 'package:movemedical_api/model/push/audit_file_push_message_file_update_type.dart'
    as _157;
import 'package:movemedical_api/model/push/audit_file_update_push_message.dart'
    as _158;
import 'package:movemedical_api/model/push/audit_file_update_push_message_audit_file_update_type.dart'
    as _159;
import 'package:movemedical_api/model/push/audit_updated_push_message.dart'
    as _160;
import 'package:movemedical_api/model/push/case_event_file_update_push_message.dart'
    as _161;
import 'package:movemedical_api/model/push/case_event_file_update_push_message_case_event_file_update_type.dart'
    as _162;
import 'package:movemedical_api/model/push/case_event_update_push_message.dart'
    as _163;
import 'package:movemedical_api/model/push/case_event_update_type.dart' as _164;
import 'package:movemedical_api/model/push/case_requirements_updated_push_message.dart'
    as _165;
import 'package:movemedical_api/model/push/case_schedule_update_push_message.dart'
    as _166;
import 'package:movemedical_api/model/push/conversation_updated_push_message.dart'
    as _167;
import 'package:movemedical_api/model/push/create_pick_finished_push_message.dart'
    as _168;
import 'package:movemedical_api/model/push/export_log_file_push_message.dart'
    as _169;
import 'package:movemedical_api/model/push/export_log_file_push_message_file_update_type.dart'
    as _170;
import 'package:movemedical_api/model/push/facility_updated_push_message.dart'
    as _171;
import 'package:movemedical_api/model/push/import_log_file_push_message.dart'
    as _172;
import 'package:movemedical_api/model/push/import_log_file_push_message_file_update_type.dart'
    as _173;
import 'package:movemedical_api/model/push/issue_regenerated_push_message.dart'
    as _174;
import 'package:movemedical_api/model/push/item_file_update_push_message.dart'
    as _175;
import 'package:movemedical_api/model/push/item_file_update_push_message_update_type.dart'
    as _176;
import 'package:movemedical_api/model/push/loan_detail_push_message.dart'
    as _177;
import 'package:movemedical_api/model/push/loan_lines_updated_push_message.dart'
    as _178;
import 'package:movemedical_api/model/push/message_added_push_message.dart'
    as _179;
import 'package:movemedical_api/model/push/messages_read_unread_push_message.dart'
    as _180;
import 'package:movemedical_api/model/push/messaging_badge_updated_push_message.dart'
    as _181;
import 'package:movemedical_api/model/push/note_added_updated_push_message.dart'
    as _182;
import 'package:movemedical_api/model/push/order_detail_push_message.dart'
    as _183;
import 'package:movemedical_api/model/push/order_file_push_message.dart'
    as _184;
import 'package:movemedical_api/model/push/order_file_push_message_file_update_type.dart'
    as _185;
import 'package:movemedical_api/model/push/refresh_conversation_list_push_message.dart'
    as _186;
import 'package:movemedical_api/model/push/shipment_file_update_push_message.dart'
    as _187;
import 'package:movemedical_api/model/push/shipment_file_update_push_message_file_update_type.dart'
    as _188;
import 'package:movemedical_api/model/push/shipment_updated_push_message.dart'
    as _189;
import 'package:movemedical_api/model/push/stock_summary_key_updated_push_message.dart'
    as _190;
import 'package:movemedical_api/model/push/ui_setup_updated_push_message.dart'
    as _191;
import 'package:movemedical_api/model/essentials/intraop/move_presence_event.dart'
    as _192;
import 'package:movemedical_api/model/essentials/intraop/presence_event_type.dart'
    as _193;
import 'package:movemedical_api/model/essentials/intraop/move_presence.dart'
    as _194;

SerializersBuilder $serializers() => (Serializers().toBuilder()
  ..addBuilderFactory(FullType(BuiltList, [FullType(_9.InventoryType)]),
      () => ListBuilder<_9.InventoryType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_12.MoveItemClass)]),
      () => ListBuilder<_12.MoveItemClass>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_13.MoveItemType)]),
      () => ListBuilder<_13.MoveItemType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_14.LocationType)]),
      () => ListBuilder<_14.LocationType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_15.FacilityType)]),
      () => ListBuilder<_15.FacilityType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_16.Location)]),
      () => ListBuilder<_16.Location>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_6.GetUiSetupAllApiInvTransferType)]),
      () => ListBuilder<_6.GetUiSetupAllApiInvTransferType>())
  ..addBuilderFactory(FullType(BuiltList, []), () => ListBuilder<String>())
  ..addBuilderFactory(
      FullType(
          BuiltList, [FullType(_17.GetConsignmentLoanFieldsApiLoanFieldData)]),
      () => ListBuilder<_17.GetConsignmentLoanFieldsApiLoanFieldData>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_31.GetUiSetupAllApiBizUnit)]),
      () => ListBuilder<_31.GetUiSetupAllApiBizUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_32.GetUiSetupAllApiOrgUnit)]),
      () => ListBuilder<_32.GetUiSetupAllApiOrgUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_44.UiClientConfiguration)]),
      () => ListBuilder<_44.UiClientConfiguration>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_46.GetUiSetupMobileApiDashboardWidget)]),
      () => ListBuilder<_46.GetUiSetupMobileApiDashboardWidget>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_48.MobileNavigationElement)]),
      () => ListBuilder<_48.MobileNavigationElement>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_49.MobileReport)]),
      () => ListBuilder<_49.MobileReport>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_66.BodySide)]),
      () => ListBuilder<_66.BodySide>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_67.CaseEventStatus)]),
      () => ListBuilder<_67.CaseEventStatus>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_74.ListCaseEventsApiCaseEvent)]),
      () => ListBuilder<_74.ListCaseEventsApiCaseEvent>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_75.ListCaseEventsApiCountData)]),
      () => ListBuilder<_75.ListCaseEventsApiCountData>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_79.CaseType)]),
      () => ListBuilder<_79.CaseType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_82.Hospital)]),
      () => ListBuilder<_82.Hospital>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_85.Physician)]),
      () => ListBuilder<_85.Physician>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_89.HcrTeam)]),
      () => ListBuilder<_89.HcrTeam>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_95.ListProceduresForSearchApiProcedure)]),
      () => ListBuilder<_95.ListProceduresForSearchApiProcedure>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_98.SubProcedure)]),
      () => ListBuilder<_98.SubProcedure>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_105.CaseCustomValue)]),
      () => ListBuilder<_105.CaseCustomValue>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_106.Procedure)]),
      () => ListBuilder<_106.Procedure>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_121.OrderHeaderLite)]),
      () => ListBuilder<_121.OrderHeaderLite>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_123.CaseCustomFieldValue)]),
      () => ListBuilder<_123.CaseCustomFieldValue>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_131.GetCaseEventDetailApiCaseDoc)]),
      () => ListBuilder<_131.GetCaseEventDetailApiCaseDoc>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_138.AttributableObject)]),
      () => ListBuilder<_138.AttributableObject>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_137.ListConversationsApiConversation)]),
      () => ListBuilder<_137.ListConversationsApiConversation>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_144.GetConversationApiParticipant)]),
      () => ListBuilder<_144.GetConversationApiParticipant>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_146.MessageMessageParticipant)]),
      () => ListBuilder<_146.MessageMessageParticipant>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_145.Message)]),
      () => ListBuilder<_145.Message>())
  ..add(_0.AppState.serializer)
  ..add(_1.ApiCommand.serializer)
  ..add(_1.ApiResultCode.serializer)
  ..add(_1.ApiResult.serializer)
  ..add(_1.ApiState.serializer)
  ..addBuilderFactory(FullType(_1.ApiCommand, [FullType(_2.LoginRequest)]),
      () => _1.ApiCommandBuilder<_2.LoginRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_50.GetUiSetupMobileApiRequest)]),
      () => _1.ApiCommandBuilder<_50.GetUiSetupMobileApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_65.ListCaseEventsApiRequest)]),
      () => _1.ApiCommandBuilder<_65.ListCaseEventsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_77.ListCaseTypesApiRequest)]),
      () => _1.ApiCommandBuilder<_77.ListCaseTypesApiRequest>())
  ..addBuilderFactory(
      FullType(
          _1.ApiCommand, [FullType(_80.ListHospitalsForSchedulingApiRequest)]),
      () => _1.ApiCommandBuilder<_80.ListHospitalsForSchedulingApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand,
          [FullType(_83.ListSurgeonPhysiciansForSchedulingApiRequest)]),
      () => _1.ApiCommandBuilder<
          _83.ListSurgeonPhysiciansForSchedulingApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_87.SearchHcrTeamsApiRequest)]),
      () => _1.ApiCommandBuilder<_87.SearchHcrTeamsApiRequest>())
  ..addBuilderFactory(
      FullType(
          _1.ApiCommand, [FullType(_91.ListProceduresForSearchApiRequest)]),
      () => _1.ApiCommandBuilder<_91.ListProceduresForSearchApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_96.ListSubProceduresApiRequest)]),
      () => _1.ApiCommandBuilder<_96.ListSubProceduresApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_100.CreateCaseEventApiRequest)]),
      () => _1.ApiCommandBuilder<_100.CreateCaseEventApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand,
          [FullType(_108.ListProceduresForSchedulingApiRequest)]),
      () => _1.ApiCommandBuilder<_108.ListProceduresForSchedulingApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_111.GetCaseEventDetailApiRequest)]),
      () => _1.ApiCommandBuilder<_111.GetCaseEventDetailApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_134.ListConversationsApiRequest)]),
      () => _1.ApiCommandBuilder<_134.ListConversationsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_142.GetConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_142.GetConversationApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_149.CreateConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_149.CreateConversationApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_152.CreateMessageApiRequest)]),
      () => _1.ApiCommandBuilder<_152.CreateMessageApiRequest>())
  ..addBuilderFactory(FullType(_1.ApiResult, [FullType(_2.LoginResponse)]),
      () => _1.ApiResultBuilder<_2.LoginResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_4.GetUiSetupMobileApiResponse)]),
      () => _1.ApiResultBuilder<_4.GetUiSetupMobileApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_73.ListCaseEventsApiResponse)]),
      () => _1.ApiResultBuilder<_73.ListCaseEventsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_78.ListCaseTypesApiResponse)]),
      () => _1.ApiResultBuilder<_78.ListCaseTypesApiResponse>())
  ..addBuilderFactory(
      FullType(
          _1.ApiResult, [FullType(_81.ListHospitalsForSchedulingApiResponse)]),
      () => _1.ApiResultBuilder<_81.ListHospitalsForSchedulingApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult,
          [FullType(_84.ListSurgeonPhysiciansForSchedulingApiResponse)]),
      () => _1.ApiResultBuilder<
          _84.ListSurgeonPhysiciansForSchedulingApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_88.SearchHcrTeamsApiResponse)]),
      () => _1.ApiResultBuilder<_88.SearchHcrTeamsApiResponse>())
  ..addBuilderFactory(
      FullType(
          _1.ApiResult, [FullType(_94.ListProceduresForSearchApiResponse)]),
      () => _1.ApiResultBuilder<_94.ListProceduresForSearchApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_97.ListSubProceduresApiResponse)]),
      () => _1.ApiResultBuilder<_97.ListSubProceduresApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_107.CreateCaseEventApiResponse)]),
      () => _1.ApiResultBuilder<_107.CreateCaseEventApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult,
          [FullType(_109.ListProceduresForSchedulingApiResponse)]),
      () => _1.ApiResultBuilder<_109.ListProceduresForSchedulingApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_112.GetCaseEventDetailApiResponse)]),
      () => _1.ApiResultBuilder<_112.GetCaseEventDetailApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_136.ListConversationsApiResponse)]),
      () => _1.ApiResultBuilder<_136.ListConversationsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_143.GetConversationApiResponse)]),
      () => _1.ApiResultBuilder<_143.GetConversationApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_150.CreateConversationApiResponse)]),
      () => _1.ApiResultBuilder<_150.CreateConversationApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_153.CreateMessageApiResponse)]),
      () => _1.ApiResultBuilder<_153.CreateMessageApiResponse>())
  ..add(_2.LoginResponse.serializer)
  ..add(_2.LoginRequest.serializer)
  ..add(_3.CommandStatus.serializer)
  ..add(_3.Command.serializer)
  ..add(_3.CommandResultCode.serializer)
  ..add(_3.CommandResult.serializer)
  ..add(_3.CommandState.serializer)
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_2.LoginRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_2.LoginRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_50.GetUiSetupMobileApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_50.GetUiSetupMobileApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_53.SplashState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_53.SplashState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_59.DashboardState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_59.DashboardState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_58.LoginState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_58.LoginState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_65.ListCaseEventsApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_65.ListCaseEventsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_64.CaseEventListState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_64.CaseEventListState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_77.ListCaseTypesApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_77.ListCaseTypesApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(
            _1.ApiCommand, [FullType(_80.ListHospitalsForSchedulingApiRequest)])
      ]),
      () => _3.CommandBuilder<
          _1.ApiCommand<_80.ListHospitalsForSchedulingApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand,
            [FullType(_83.ListSurgeonPhysiciansForSchedulingApiRequest)])
      ]),
      () => _3.CommandBuilder<
          _1.ApiCommand<_83.ListSurgeonPhysiciansForSchedulingApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_87.SearchHcrTeamsApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_87.SearchHcrTeamsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(
            _1.ApiCommand, [FullType(_91.ListProceduresForSearchApiRequest)])
      ]),
      () => _3.CommandBuilder<
          _1.ApiCommand<_91.ListProceduresForSearchApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_96.ListSubProceduresApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_96.ListSubProceduresApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_76.CaseEventListFilterState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_76.CaseEventListFilterState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_100.CreateCaseEventApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_100.CreateCaseEventApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand,
            [FullType(_108.ListProceduresForSchedulingApiRequest)])
      ]),
      () => _3.CommandBuilder<
          _1.ApiCommand<_108.ListProceduresForSchedulingApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_99.CreateCaseEventState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_99.CreateCaseEventState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_111.GetCaseEventDetailApiRequest)])
      ]),
      () =>
          _3.CommandBuilder<_1.ApiCommand<_111.GetCaseEventDetailApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_110.CaseEventDetailState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_110.CaseEventDetailState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_134.ListConversationsApiRequest)])
      ]),
      () =>
          _3.CommandBuilder<_1.ApiCommand<_134.ListConversationsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_139.ConversationListFilterState)])
      ]),
      () => _3.CommandBuilder<
          _54.RouteCommand<_139.ConversationListFilterState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_140.UpdateConversationState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_140.UpdateConversationState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_142.GetConversationApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_142.GetConversationApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_141.ConversationState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_141.ConversationState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_133.ConversationListState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_133.ConversationListState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_149.CreateConversationApiRequest)])
      ]),
      () =>
          _3.CommandBuilder<_1.ApiCommand<_149.CreateConversationApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_148.CreateConversationState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_148.CreateConversationState>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_1.ApiCommand, [FullType(_152.CreateMessageApiRequest)])
      ]),
      () => _3.CommandBuilder<_1.ApiCommand<_152.CreateMessageApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.Command, [
        FullType(_54.RouteCommand, [FullType(_151.CreateMessageState)])
      ]),
      () => _3.CommandBuilder<_54.RouteCommand<_151.CreateMessageState>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_2.LoginResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_2.LoginResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_4.GetUiSetupMobileApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_4.GetUiSetupMobileApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandResultBuilder<_54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(FullType(_3.CommandResult, [FullType(_54.RouteResult)]), () => _3.CommandResultBuilder<_54.RouteResult>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_73.ListCaseEventsApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_73.ListCaseEventsApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_78.ListCaseTypesApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_78.ListCaseTypesApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(
            _1.ApiResult, [FullType(_81.ListHospitalsForSchedulingApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_81.ListHospitalsForSchedulingApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult,
            [FullType(_84.ListSurgeonPhysiciansForSchedulingApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_84.ListSurgeonPhysiciansForSchedulingApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_88.SearchHcrTeamsApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_88.SearchHcrTeamsApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(
            _1.ApiResult, [FullType(_94.ListProceduresForSearchApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_94.ListProceduresForSearchApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_97.ListSubProceduresApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_97.ListSubProceduresApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_54.RouteResult, [FullType(_65.ListCaseEventsApiRequest)])
      ]),
      () => _3.CommandResultBuilder<_54.RouteResult<_65.ListCaseEventsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_107.CreateCaseEventApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_107.CreateCaseEventApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult,
            [FullType(_109.ListProceduresForSchedulingApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_109.ListProceduresForSchedulingApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_54.RouteResult, [FullType(_107.CreateCaseEventApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_54.RouteResult<_107.CreateCaseEventApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_112.GetCaseEventDetailApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_112.GetCaseEventDetailApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_136.ListConversationsApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_136.ListConversationsApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_54.RouteResult, [FullType(_134.ListConversationsApiRequest)])
      ]),
      () => _3.CommandResultBuilder<_54.RouteResult<_134.ListConversationsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_143.GetConversationApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_143.GetConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_150.CreateConversationApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_150.CreateConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(
            _54.RouteResult, [FullType(_150.CreateConversationApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_54.RouteResult<_150.CreateConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_1.ApiResult, [FullType(_153.CreateMessageApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_1.ApiResult<_153.CreateMessageApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandResult, [
        FullType(_54.RouteResult, [FullType(_153.CreateMessageApiResponse)])
      ]),
      () => _3.CommandResultBuilder<_54.RouteResult<_153.CreateMessageApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_2.LoginRequest)]),
        FullType(_1.ApiResult, [FullType(_2.LoginResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_2.LoginRequest>, _1.ApiResult<_2.LoginResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_50.GetUiSetupMobileApiRequest)]),
        FullType(_1.ApiResult, [FullType(_4.GetUiSetupMobileApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_50.GetUiSetupMobileApiRequest>, _1.ApiResult<_4.GetUiSetupMobileApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_53.SplashState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_53.SplashState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_59.DashboardState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_59.DashboardState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_58.LoginState)]),
        FullType(_54.RouteResult)
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_58.LoginState>, _54.RouteResult>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_58.LoginState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_58.LoginState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_65.ListCaseEventsApiRequest)]),
        FullType(_1.ApiResult, [FullType(_73.ListCaseEventsApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_65.ListCaseEventsApiRequest>, _1.ApiResult<_73.ListCaseEventsApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_64.CaseEventListState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_64.CaseEventListState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_77.ListCaseTypesApiRequest)]),
        FullType(_1.ApiResult, [FullType(_78.ListCaseTypesApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_77.ListCaseTypesApiRequest>, _1.ApiResult<_78.ListCaseTypesApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand,
            [FullType(_80.ListHospitalsForSchedulingApiRequest)]),
        FullType(
            _1.ApiResult, [FullType(_81.ListHospitalsForSchedulingApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_80.ListHospitalsForSchedulingApiRequest>, _1.ApiResult<_81.ListHospitalsForSchedulingApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand,
            [FullType(_83.ListSurgeonPhysiciansForSchedulingApiRequest)]),
        FullType(_1.ApiResult,
            [FullType(_84.ListSurgeonPhysiciansForSchedulingApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_83.ListSurgeonPhysiciansForSchedulingApiRequest>, _1.ApiResult<_84.ListSurgeonPhysiciansForSchedulingApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_87.SearchHcrTeamsApiRequest)]),
        FullType(_1.ApiResult, [FullType(_88.SearchHcrTeamsApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_87.SearchHcrTeamsApiRequest>, _1.ApiResult<_88.SearchHcrTeamsApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(
            _1.ApiCommand, [FullType(_91.ListProceduresForSearchApiRequest)]),
        FullType(
            _1.ApiResult, [FullType(_94.ListProceduresForSearchApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_91.ListProceduresForSearchApiRequest>, _1.ApiResult<_94.ListProceduresForSearchApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_96.ListSubProceduresApiRequest)]),
        FullType(_1.ApiResult, [FullType(_97.ListSubProceduresApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_96.ListSubProceduresApiRequest>, _1.ApiResult<_97.ListSubProceduresApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_76.CaseEventListFilterState)]),
        FullType(_54.RouteResult, [FullType(_65.ListCaseEventsApiRequest)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_76.CaseEventListFilterState>, _54.RouteResult<_65.ListCaseEventsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_100.CreateCaseEventApiRequest)]),
        FullType(_1.ApiResult, [FullType(_107.CreateCaseEventApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_100.CreateCaseEventApiRequest>, _1.ApiResult<_107.CreateCaseEventApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand,
            [FullType(_108.ListProceduresForSchedulingApiRequest)]),
        FullType(_1.ApiResult,
            [FullType(_109.ListProceduresForSchedulingApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_108.ListProceduresForSchedulingApiRequest>, _1.ApiResult<_109.ListProceduresForSchedulingApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_99.CreateCaseEventState)]),
        FullType(_54.RouteResult, [FullType(_107.CreateCaseEventApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_99.CreateCaseEventState>, _54.RouteResult<_107.CreateCaseEventApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_111.GetCaseEventDetailApiRequest)]),
        FullType(_1.ApiResult, [FullType(_112.GetCaseEventDetailApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_111.GetCaseEventDetailApiRequest>, _1.ApiResult<_112.GetCaseEventDetailApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_110.CaseEventDetailState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_110.CaseEventDetailState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_134.ListConversationsApiRequest)]),
        FullType(_1.ApiResult, [FullType(_136.ListConversationsApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_134.ListConversationsApiRequest>, _1.ApiResult<_136.ListConversationsApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(
            _54.RouteCommand, [FullType(_139.ConversationListFilterState)]),
        FullType(_54.RouteResult, [FullType(_134.ListConversationsApiRequest)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_139.ConversationListFilterState>, _54.RouteResult<_134.ListConversationsApiRequest>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_140.UpdateConversationState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_140.UpdateConversationState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_142.GetConversationApiRequest)]),
        FullType(_1.ApiResult, [FullType(_143.GetConversationApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_142.GetConversationApiRequest>, _1.ApiResult<_143.GetConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_141.ConversationState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_141.ConversationState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_133.ConversationListState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_133.ConversationListState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(
            _54.RouteCommand, [FullType(_139.ConversationListFilterState)]),
        FullType(_54.RouteResult, [FullType(_55.Nothing)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_139.ConversationListFilterState>, _54.RouteResult<_55.Nothing>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_149.CreateConversationApiRequest)]),
        FullType(_1.ApiResult, [FullType(_150.CreateConversationApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_149.CreateConversationApiRequest>, _1.ApiResult<_150.CreateConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_148.CreateConversationState)]),
        FullType(
            _54.RouteResult, [FullType(_150.CreateConversationApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_148.CreateConversationState>, _54.RouteResult<_150.CreateConversationApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_1.ApiCommand, [FullType(_152.CreateMessageApiRequest)]),
        FullType(_1.ApiResult, [FullType(_153.CreateMessageApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_1.ApiCommand<_152.CreateMessageApiRequest>, _1.ApiResult<_153.CreateMessageApiResponse>>())
  ..addBuilderFactory(
      FullType(_3.CommandState, [
        FullType(_54.RouteCommand, [FullType(_151.CreateMessageState)]),
        FullType(_54.RouteResult, [FullType(_153.CreateMessageApiResponse)])
      ]),
      () => _3.CommandStateBuilder<_54.RouteCommand<_151.CreateMessageState>, _54.RouteResult<_153.CreateMessageApiResponse>>())
  ..add(_4.GetUiSetupMobileApiResponse.serializer)
  ..add(_5.GetUiSetupAllApiResponse.serializer)
  ..add(_6.GetUiSetupAllApiInvTransferType.serializer)
  ..add(_7.OrderReason.serializer)
  ..add(_8.OrderReasonGroup.serializer)
  ..add(_9.InventoryType.serializer)
  ..add(_10.SalesOrderInventorySource.serializer)
  ..add(_11.ShippingService.serializer)
  ..add(_12.MoveItemClass.serializer)
  ..add(_13.MoveItemType.serializer)
  ..add(_14.LocationType.serializer)
  ..add(_15.FacilityType.serializer)
  ..add(_16.Location.serializer)
  ..add(_17.GetConsignmentLoanFieldsApiLoanFieldData.serializer)
  ..add(_18.GetConsignmentLoanFieldsApiLoanField.serializer)
  ..add(_19.GetUiSetupAllApiUser.serializer)
  ..add(_20.UserPerspective.serializer)
  ..add(_21.MoveLocale.serializer)
  ..add(_22.MoveDateRegion.serializer)
  ..add(_23.Contact.serializer)
  ..add(_24.ContactType.serializer)
  ..add(_25.GeneralContactType.serializer)
  ..add(_26.Email.serializer)
  ..add(_27.PersonName.serializer)
  ..add(_28.SSOType.serializer)
  ..add(_29.MfaType.serializer)
  ..add(_30.GetUiSetupAllApiOrgInfo.serializer)
  ..add(_31.GetUiSetupAllApiBizUnit.serializer)
  ..add(_32.GetUiSetupAllApiOrgUnit.serializer)
  ..add(_33.GetUiSetupAllApiUserPermissions.serializer)
  ..add(_34.SystemAdmin.serializer)
  ..add(_35.Ae.serializer)
  ..add(_36.OrgType.serializer)
  ..add(_37.PhoneNumber.serializer)
  ..add(_38.Hcp.serializer)
  ..add(_39.HcpType.serializer)
  ..add(_40.Hcr.serializer)
  ..add(_41.HcrType.serializer)
  ..add(_42.Dce.serializer)
  ..add(_43.Consumer.serializer)
  ..add(_44.UiClientConfiguration.serializer)
  ..add(_45.UiClientConfigurationType.serializer)
  ..add(_46.GetUiSetupMobileApiDashboardWidget.serializer)
  ..add(_47.MobileDashboardWidgetType.serializer)
  ..add(_48.MobileNavigationElement.serializer)
  ..add(_49.MobileReport.serializer)
  ..add(_50.GetUiSetupMobileApiRequest.serializer)
  ..add(_51.MobilePlatform.serializer)
  ..add(_52.NavState.serializer)
  ..add(_53.SplashState.serializer)
  ..add(_54.RouteCommandAction.serializer)
  ..add(_54.RouteType.serializer)
  ..add(_54.RouteCommand.serializer)
  ..add(_54.RouteResult.serializer)
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_53.SplashState)]), () => _54.RouteCommandBuilder<_53.SplashState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_59.DashboardState)]), () => _54.RouteCommandBuilder<_59.DashboardState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_58.LoginState)]), () => _54.RouteCommandBuilder<_58.LoginState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_64.CaseEventListState)]), () => _54.RouteCommandBuilder<_64.CaseEventListState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_76.CaseEventListFilterState)]), () => _54.RouteCommandBuilder<_76.CaseEventListFilterState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_99.CreateCaseEventState)]), () => _54.RouteCommandBuilder<_99.CreateCaseEventState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_110.CaseEventDetailState)]), () => _54.RouteCommandBuilder<_110.CaseEventDetailState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_139.ConversationListFilterState)]), () => _54.RouteCommandBuilder<_139.ConversationListFilterState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_140.UpdateConversationState)]), () => _54.RouteCommandBuilder<_140.UpdateConversationState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_141.ConversationState)]), () => _54.RouteCommandBuilder<_141.ConversationState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_133.ConversationListState)]), () => _54.RouteCommandBuilder<_133.ConversationListState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_148.CreateConversationState)]), () => _54.RouteCommandBuilder<_148.CreateConversationState>())
  ..addBuilderFactory(FullType(_54.RouteCommand, [FullType(_151.CreateMessageState)]), () => _54.RouteCommandBuilder<_151.CreateMessageState>())
  ..addBuilderFactory(FullType(_54.RouteResult, [FullType(_55.Nothing)]), () => _54.RouteResultBuilder<_55.Nothing>())
  ..addBuilderFactory(FullType(_54.RouteResult, [FullType(_65.ListCaseEventsApiRequest)]), () => _54.RouteResultBuilder<_65.ListCaseEventsApiRequest>())
  ..addBuilderFactory(FullType(_54.RouteResult, [FullType(_107.CreateCaseEventApiResponse)]), () => _54.RouteResultBuilder<_107.CreateCaseEventApiResponse>())
  ..addBuilderFactory(FullType(_54.RouteResult, [FullType(_134.ListConversationsApiRequest)]), () => _54.RouteResultBuilder<_134.ListConversationsApiRequest>())
  ..addBuilderFactory(FullType(_54.RouteResult, [FullType(_150.CreateConversationApiResponse)]), () => _54.RouteResultBuilder<_150.CreateConversationApiResponse>())
  ..addBuilderFactory(FullType(_54.RouteResult, [FullType(_153.CreateMessageApiResponse)]), () => _54.RouteResultBuilder<_153.CreateMessageApiResponse>())
  ..add(_55.Nothing.serializer)
  ..add(_56.ScaffoldState.serializer)
  ..add(_57.DrawerState.serializer)
  ..add(_58.LoginState.serializer)
  ..add(_59.DashboardState.serializer)
  ..add(_60.BottomBarState.serializer)
  ..add(_61.DashboardModuleState.serializer)
  ..add(_62.AuthModuleState.serializer)
  ..add(_63.SchedulingModuleState.serializer)
  ..add(_64.CaseEventListState.serializer)
  ..add(_65.ListCaseEventsApiRequest.serializer)
  ..add(_66.BodySide.serializer)
  ..add(_67.CaseEventStatus.serializer)
  ..add(_68.Gender.serializer)
  ..add(_69.PaginationParams.serializer)
  ..add(_70.OrderByParams.serializer)
  ..addBuilderFactory(FullType(_70.OrderByParams, [FullType(_71.ListCaseEventsApiOrderBy)]), () => _70.OrderByParamsBuilder<_71.ListCaseEventsApiOrderBy>())
  ..addBuilderFactory(FullType(_70.OrderByParams, [FullType(_93.ListProceduresForSearchApiOrderBy)]), () => _70.OrderByParamsBuilder<_93.ListProceduresForSearchApiOrderBy>())
  ..add(_71.ListCaseEventsApiOrderBy.serializer)
  ..add(_72.OrderByDirection.serializer)
  ..add(_73.ListCaseEventsApiResponse.serializer)
  ..add(_74.ListCaseEventsApiCaseEvent.serializer)
  ..add(_75.ListCaseEventsApiCountData.serializer)
  ..add(_76.CaseEventListFilterState.serializer)
  ..add(_77.ListCaseTypesApiRequest.serializer)
  ..add(_78.ListCaseTypesApiResponse.serializer)
  ..add(_79.CaseType.serializer)
  ..add(_80.ListHospitalsForSchedulingApiRequest.serializer)
  ..add(_81.ListHospitalsForSchedulingApiResponse.serializer)
  ..add(_82.Hospital.serializer)
  ..add(_83.ListSurgeonPhysiciansForSchedulingApiRequest.serializer)
  ..add(_84.ListSurgeonPhysiciansForSchedulingApiResponse.serializer)
  ..add(_85.Physician.serializer)
  ..add(_86.Address.serializer)
  ..add(_87.SearchHcrTeamsApiRequest.serializer)
  ..add(_88.SearchHcrTeamsApiResponse.serializer)
  ..add(_89.HcrTeam.serializer)
  ..add(_90.HcrTeamType.serializer)
  ..add(_91.ListProceduresForSearchApiRequest.serializer)
  ..add(_92.ListProceduresForSearchApiActiveStatus.serializer)
  ..add(_93.ListProceduresForSearchApiOrderBy.serializer)
  ..add(_94.ListProceduresForSearchApiResponse.serializer)
  ..add(_95.ListProceduresForSearchApiProcedure.serializer)
  ..add(_96.ListSubProceduresApiRequest.serializer)
  ..add(_97.ListSubProceduresApiResponse.serializer)
  ..add(_98.SubProcedure.serializer)
  ..add(_99.CreateCaseEventState.serializer)
  ..add(_100.CreateCaseEventApiRequest.serializer)
  ..add(_101.LengthMeasurementType.serializer)
  ..add(_102.WeightMeasurementType.serializer)
  ..add(_103.Ethnicity.serializer)
  ..add(_104.CreateCaseEventApiInsurance.serializer)
  ..add(_105.CaseCustomValue.serializer)
  ..add(_106.Procedure.serializer)
  ..add(_107.CreateCaseEventApiResponse.serializer)
  ..add(_108.ListProceduresForSchedulingApiRequest.serializer)
  ..add(_109.ListProceduresForSchedulingApiResponse.serializer)
  ..add(_110.CaseEventDetailState.serializer)
  ..add(_111.GetCaseEventDetailApiRequest.serializer)
  ..add(_112.GetCaseEventDetailApiResponse.serializer)
  ..add(_113.GetCaseEventDetailApiCaseEvent.serializer)
  ..add(_114.BizUnit.serializer)
  ..add(_115.OrgUnit.serializer)
  ..add(_116.Patient.serializer)
  ..add(_117.GetCaseEventDetailApiLoan.serializer)
  ..add(_118.LoanStatus.serializer)
  ..add(_119.OrderStatus.serializer)
  ..add(_120.Insurance.serializer)
  ..add(_121.OrderHeaderLite.serializer)
  ..add(_122.CustomerAddress.serializer)
  ..add(_123.CaseCustomFieldValue.serializer)
  ..add(_124.CustomFieldDataType.serializer)
  ..add(_125.GetCaseEventDetailApiLoanReturnData.serializer)
  ..add(_126.GetCaseEventDetailApiEvent.serializer)
  ..add(_127.EventType.serializer)
  ..add(_128.EventStatus.serializer)
  ..add(_129.EventState.serializer)
  ..add(_130.GetCaseEventDetailApiDisplayRules.serializer)
  ..add(_131.GetCaseEventDetailApiCaseDoc.serializer)
  ..add(_132.MessagingModuleState.serializer)
  ..add(_133.ConversationListState.serializer)
  ..add(_134.ListConversationsApiRequest.serializer)
  ..add(_135.AttributableType.serializer)
  ..add(_136.ListConversationsApiResponse.serializer)
  ..add(_137.ListConversationsApiConversation.serializer)
  ..add(_138.AttributableObject.serializer)
  ..add(_139.ConversationListFilterState.serializer)
  ..add(_140.UpdateConversationState.serializer)
  ..add(_141.ConversationState.serializer)
  ..add(_142.GetConversationApiRequest.serializer)
  ..add(_143.GetConversationApiResponse.serializer)
  ..add(_144.GetConversationApiParticipant.serializer)
  ..add(_145.Message.serializer)
  ..add(_146.MessageMessageParticipant.serializer)
  ..add(_147.GetConversationApiDisplayRules.serializer)
  ..add(_148.CreateConversationState.serializer)
  ..add(_149.CreateConversationApiRequest.serializer)
  ..add(_150.CreateConversationApiResponse.serializer)
  ..add(_151.CreateMessageState.serializer)
  ..add(_152.CreateMessageApiRequest.serializer)
  ..add(_153.CreateMessageApiResponse.serializer)
  ..add(_154.DirectoryModuleState.serializer)
  ..add(_155.PushPayloads.serializer)
  ..add(_156.AuditFilePushMessage.serializer)
  ..add(_157.AuditFilePushMessageFileUpdateType.serializer)
  ..add(_158.AuditFileUpdatePushMessage.serializer)
  ..add(_159.AuditFileUpdatePushMessageAuditFileUpdateType.serializer)
  ..add(_160.AuditUpdatedPushMessage.serializer)
  ..add(_161.CaseEventFileUpdatePushMessage.serializer)
  ..add(_162.CaseEventFileUpdatePushMessageCaseEventFileUpdateType.serializer)
  ..add(_163.CaseEventUpdatePushMessage.serializer)
  ..add(_164.CaseEventUpdateType.serializer)
  ..add(_165.CaseRequirementsUpdatedPushMessage.serializer)
  ..add(_166.CaseScheduleUpdatePushMessage.serializer)
  ..add(_167.ConversationUpdatedPushMessage.serializer)
  ..add(_168.CreatePickFinishedPushMessage.serializer)
  ..add(_169.ExportLogFilePushMessage.serializer)
  ..add(_170.ExportLogFilePushMessageFileUpdateType.serializer)
  ..add(_171.FacilityUpdatedPushMessage.serializer)
  ..add(_172.ImportLogFilePushMessage.serializer)
  ..add(_173.ImportLogFilePushMessageFileUpdateType.serializer)
  ..add(_174.IssueRegeneratedPushMessage.serializer)
  ..add(_175.ItemFileUpdatePushMessage.serializer)
  ..add(_176.ItemFileUpdatePushMessageUpdateType.serializer)
  ..add(_177.LoanDetailPushMessage.serializer)
  ..add(_178.LoanLinesUpdatedPushMessage.serializer)
  ..add(_179.MessageAddedPushMessage.serializer)
  ..add(_180.MessagesReadUnreadPushMessage.serializer)
  ..add(_181.MessagingBadgeUpdatedPushMessage.serializer)
  ..add(_182.NoteAddedUpdatedPushMessage.serializer)
  ..add(_183.OrderDetailPushMessage.serializer)
  ..add(_184.OrderFilePushMessage.serializer)
  ..add(_185.OrderFilePushMessageFileUpdateType.serializer)
  ..add(_186.RefreshConversationListPushMessage.serializer)
  ..add(_187.ShipmentFileUpdatePushMessage.serializer)
  ..add(_188.ShipmentFileUpdatePushMessageFileUpdateType.serializer)
  ..add(_189.ShipmentUpdatedPushMessage.serializer)
  ..add(_190.StockSummaryKeyUpdatedPushMessage.serializer)
  ..add(_191.UiSetupUpdatedPushMessage.serializer)
  ..add(_192.MovePresenceEvent.serializer)
  ..add(_193.PresenceEventType.serializer)
  ..add(_194.MovePresence.serializer));

// ignore_for_file: implementation_imports,always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
