import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:modux/modux.dart';
import 'package:movemedical_model/app.dart' as _0;
import 'package:movemedical_api/command.dart' as _1;
import 'package:movemedical_api/login.dart' as _2;
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
import 'package:movemedical_api/model/essentials/model/api/get_consignment_loan_fields_api_loan_field_data.dart'
    as _16;
import 'package:movemedical_api/model/essentials/model/api/get_consignment_loan_fields_api_loan_field.dart'
    as _17;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user.dart'
    as _18;
import 'package:movemedical_api/model/sql/enums/user_perspective.dart' as _19;
import 'package:movemedical_api/model/essentials/i18n/move_locale.dart' as _20;
import 'package:movemedical_api/model/essentials/i18n/move_date_region.dart'
    as _21;
import 'package:movemedical_api/model/contact.dart' as _22;
import 'package:movemedical_api/model/sql/enums/contact_type.dart' as _23;
import 'package:movemedical_api/model/general_contact_type.dart' as _24;
import 'package:movemedical_api/model/email.dart' as _25;
import 'package:movemedical_api/model/person_name.dart' as _26;
import 'package:movemedical_api/model/sql/enums/sso_type.dart' as _27;
import 'package:movemedical_api/model/sql/enums/mfa_type.dart' as _28;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_info.dart'
    as _29;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart'
    as _30;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_org_unit.dart'
    as _31;
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user_permissions.dart'
    as _32;
import 'package:movemedical_api/model/system_admin.dart' as _33;
import 'package:movemedical_api/model/ae.dart' as _34;
import 'package:movemedical_api/model/sql/enums/org_type.dart' as _35;
import 'package:movemedical_api/model/phone_number.dart' as _36;
import 'package:movemedical_api/model/hcp.dart' as _37;
import 'package:movemedical_api/model/sql/enums/hcp_type.dart' as _38;
import 'package:movemedical_api/model/hcr.dart' as _39;
import 'package:movemedical_api/model/sql/enums/hcr_type.dart' as _40;
import 'package:movemedical_api/model/dce.dart' as _41;
import 'package:movemedical_api/model/remove_or_refactor/consumer.dart' as _42;
import 'package:movemedical_api/model/ui_client_configuration.dart' as _43;
import 'package:movemedical_api/model/sql/enums/ui_client_configuration_type.dart'
    as _44;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_dashboard_widget.dart'
    as _45;
import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart'
    as _46;
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart'
    as _47;
import 'package:movemedical_api/model/sql/enums/mobile_report.dart' as _48;
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_request.dart'
    as _49;
import 'package:movemedical_api/model/sql/enums/mobile_platform.dart' as _50;
import 'package:movemedical_model/nav.dart' as _51;
import 'package:movemedical_model/splash.dart' as _52;
import 'package:movemedical_model/scaffold/scaffold.dart' as _53;
import 'package:movemedical_model/scaffold/drawer.dart' as _54;
import 'package:movemedical_model/auth/login.dart' as _55;
import 'package:movemedical_model/dashboard/dashboard.dart' as _56;
import 'package:movemedical_model/scaffold/bottom_bar.dart' as _57;
import 'package:movemedical_model/dashboard/mod.dart' as _58;
import 'package:movemedical_model/auth/mod.dart' as _59;
import 'package:movemedical_model/scheduling/mod.dart' as _60;
import 'package:movemedical_model/scheduling/case_event/list.dart' as _61;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_request.dart'
    as _62;
import 'package:movemedical_api/model/sql/enums/body_side.dart' as _63;
import 'package:movemedical_api/model/sql/enums/case_event_status.dart' as _64;
import 'package:movemedical_api/model/sql/enums/gender.dart' as _65;
import 'package:movemedical_api/model/pagination_params.dart' as _66;
import 'package:movemedical_api/model/order_by_params.dart' as _67;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_order_by.dart'
    as _68;
import 'package:movemedical_api/model/order_by_direction.dart' as _69;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_response.dart'
    as _70;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_case_event.dart'
    as _71;
import 'package:movemedical_api/model/action/case_event/list_case_events_api_count_data.dart'
    as _72;
import 'package:movemedical_model/scheduling/case_event/list_filter.dart'
    as _73;
import 'package:movemedical_model/scheduling/case_event/create.dart' as _74;
import 'package:movemedical_api/model/action/case_event/create_case_event_api_request.dart'
    as _75;
import 'package:movemedical_api/model/sql/enums/length_measurement_type.dart'
    as _76;
import 'package:movemedical_api/model/sql/enums/weight_measurement_type.dart'
    as _77;
import 'package:movemedical_api/model/sql/enums/ethnicity.dart' as _78;
import 'package:movemedical_api/model/action/case_event/create_case_event_api_insurance.dart'
    as _79;
import 'package:movemedical_api/model/case_custom_value.dart' as _80;
import 'package:movemedical_api/model/case_type.dart' as _81;
import 'package:movemedical_api/model/procedure.dart' as _82;
import 'package:movemedical_api/model/sub_procedure.dart' as _83;
import 'package:movemedical_api/model/physician.dart' as _84;
import 'package:movemedical_api/model/address.dart' as _85;
import 'package:movemedical_api/model/remove_or_refactor/hospital.dart' as _86;
import 'package:movemedical_api/model/hcr_team.dart' as _87;
import 'package:movemedical_api/model/hcr_team_type.dart' as _88;
import 'package:movemedical_api/model/action/case_event/create_case_event_api_response.dart'
    as _89;
import 'package:movemedical_api/model/action/directory/search_hcr_teams_api_request.dart'
    as _90;
import 'package:movemedical_api/model/action/directory/search_hcr_teams_api_response.dart'
    as _91;
import 'package:movemedical_api/model/action/case_event/list_surgeon_physicians_for_scheduling_api_request.dart'
    as _92;
import 'package:movemedical_api/model/action/case_event/list_surgeon_physicians_for_scheduling_api_response.dart'
    as _93;
import 'package:movemedical_api/model/action/case_event/list_hospitals_for_scheduling_api_request.dart'
    as _94;
import 'package:movemedical_api/model/action/case_event/list_hospitals_for_scheduling_api_response.dart'
    as _95;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_scheduling_api_request.dart'
    as _96;
import 'package:movemedical_api/model/action/case_event/list_procedures_for_scheduling_api_response.dart'
    as _97;
import 'package:movemedical_api/model/action/case_event/list_sub_procedures_api_request.dart'
    as _98;
import 'package:movemedical_api/model/action/case_event/list_sub_procedures_api_response.dart'
    as _99;
import 'package:movemedical_api/model/action/case_event/list_case_types_api_request.dart'
    as _100;
import 'package:movemedical_api/model/action/case_event/list_case_types_api_response.dart'
    as _101;
import 'package:movemedical_model/scheduling/case_event/detail.dart' as _102;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_request.dart'
    as _103;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_response.dart'
    as _104;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_case_event.dart'
    as _105;
import 'package:movemedical_api/model/biz_unit.dart' as _106;
import 'package:movemedical_api/model/org_unit.dart' as _107;
import 'package:movemedical_api/model/patient.dart' as _108;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_loan.dart'
    as _109;
import 'package:movemedical_api/model/sql/enums/loan_status.dart' as _110;
import 'package:movemedical_api/model/sql/enums/order_status.dart' as _111;
import 'package:movemedical_api/model/insurance.dart' as _112;
import 'package:movemedical_api/model/order_header_lite.dart' as _113;
import 'package:movemedical_api/model/customer_address.dart' as _114;
import 'package:movemedical_api/model/essentials/model/api/case_custom_field_value.dart'
    as _115;
import 'package:movemedical_api/model/sql/enums/custom_field_data_type.dart'
    as _116;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_loan_return_data.dart'
    as _117;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_event.dart'
    as _118;
import 'package:movemedical_api/model/sql/enums/event_type.dart' as _119;
import 'package:movemedical_api/model/sql/enums/event_status.dart' as _120;
import 'package:movemedical_api/model/sql/enums/event_state.dart' as _121;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_display_rules.dart'
    as _122;
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_case_doc.dart'
    as _123;
import 'package:movemedical_model/messaging/mod.dart' as _124;
import 'package:movemedical_model/messaging/list.dart' as _125;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_request.dart'
    as _126;
import 'package:movemedical_api/model/sql/enums/attributable_type.dart' as _127;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_response.dart'
    as _128;
import 'package:movemedical_api/model/action/messaging/conversations/list_conversations_api_conversation.dart'
    as _129;
import 'package:movemedical_api/model/attributable_object.dart' as _130;
import 'package:movemedical_model/messaging/list_filter.dart' as _131;
import 'package:movemedical_model/messaging/update_conversation.dart' as _132;
import 'package:movemedical_model/messaging/detail.dart' as _133;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_request.dart'
    as _134;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_response.dart'
    as _135;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_participant.dart'
    as _136;
import 'package:movemedical_api/model/remove_or_refactor/message.dart' as _137;
import 'package:movemedical_api/model/remove_or_refactor/message_message_participant.dart'
    as _138;
import 'package:movemedical_api/model/action/messaging/conversations/get_conversation_api_display_rules.dart'
    as _139;
import 'package:movemedical_model/messaging/create_conversation.dart' as _140;
import 'package:movemedical_api/model/action/messaging/messages/create_conversation_api_request.dart'
    as _141;
import 'package:movemedical_api/model/action/messaging/messages/create_conversation_api_response.dart'
    as _142;
import 'package:movemedical_model/messaging/create_message.dart' as _143;
import 'package:movemedical_api/model/action/messaging/messages/create_message_api_request.dart'
    as _144;
import 'package:movemedical_api/model/action/messaging/messages/create_message_api_response.dart'
    as _145;
import 'package:movemedical_model/directory/mod.dart' as _146;
import 'package:movemedical_api/state/push.dart' as _147;
import 'package:movemedical_api/model/push/audit_file_push_message.dart'
    as _148;
import 'package:movemedical_api/model/push/audit_file_push_message_file_update_type.dart'
    as _149;
import 'package:movemedical_api/model/push/audit_file_update_push_message.dart'
    as _150;
import 'package:movemedical_api/model/push/audit_file_update_push_message_audit_file_update_type.dart'
    as _151;
import 'package:movemedical_api/model/push/audit_updated_push_message.dart'
    as _152;
import 'package:movemedical_api/model/push/case_event_file_update_push_message.dart'
    as _153;
import 'package:movemedical_api/model/push/case_event_file_update_push_message_case_event_file_update_type.dart'
    as _154;
import 'package:movemedical_api/model/push/case_event_update_push_message.dart'
    as _155;
import 'package:movemedical_api/model/push/case_event_update_type.dart' as _156;
import 'package:movemedical_api/model/push/case_requirements_updated_push_message.dart'
    as _157;
import 'package:movemedical_api/model/push/case_schedule_update_push_message.dart'
    as _158;
import 'package:movemedical_api/model/push/conversation_updated_push_message.dart'
    as _159;
import 'package:movemedical_api/model/push/create_pick_finished_push_message.dart'
    as _160;
import 'package:movemedical_api/model/push/export_log_file_push_message.dart'
    as _161;
import 'package:movemedical_api/model/push/export_log_file_push_message_file_update_type.dart'
    as _162;
import 'package:movemedical_api/model/push/facility_updated_push_message.dart'
    as _163;
import 'package:movemedical_api/model/push/import_log_file_push_message.dart'
    as _164;
import 'package:movemedical_api/model/push/import_log_file_push_message_file_update_type.dart'
    as _165;
import 'package:movemedical_api/model/push/issue_regenerated_push_message.dart'
    as _166;
import 'package:movemedical_api/model/push/item_file_update_push_message.dart'
    as _167;
import 'package:movemedical_api/model/push/item_file_update_push_message_update_type.dart'
    as _168;
import 'package:movemedical_api/model/push/loan_detail_push_message.dart'
    as _169;
import 'package:movemedical_api/model/push/loan_lines_updated_push_message.dart'
    as _170;
import 'package:movemedical_api/model/push/message_added_push_message.dart'
    as _171;
import 'package:movemedical_api/model/push/messages_read_unread_push_message.dart'
    as _172;
import 'package:movemedical_api/model/push/messaging_badge_updated_push_message.dart'
    as _173;
import 'package:movemedical_api/model/push/note_added_updated_push_message.dart'
    as _174;
import 'package:movemedical_api/model/push/order_detail_push_message.dart'
    as _175;
import 'package:movemedical_api/model/push/order_file_push_message.dart'
    as _176;
import 'package:movemedical_api/model/push/order_file_push_message_file_update_type.dart'
    as _177;
import 'package:movemedical_api/model/push/refresh_conversation_list_push_message.dart'
    as _178;
import 'package:movemedical_api/model/push/shipment_file_update_push_message.dart'
    as _179;
import 'package:movemedical_api/model/push/shipment_file_update_push_message_file_update_type.dart'
    as _180;
import 'package:movemedical_api/model/push/shipment_updated_push_message.dart'
    as _181;
import 'package:movemedical_api/model/push/stock_summary_key_updated_push_message.dart'
    as _182;
import 'package:movemedical_api/model/push/ui_setup_updated_push_message.dart'
    as _183;
import 'package:movemedical_api/model/essentials/intraop/move_presence_event.dart'
    as _184;
import 'package:movemedical_api/model/essentials/intraop/presence_event_type.dart'
    as _185;
import 'package:movemedical_api/model/essentials/intraop/move_presence.dart'
    as _186;

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
  ..addBuilderFactory(FullType(BuiltList, []), () => ListBuilder<String>())
  ..addBuilderFactory(
      FullType(
          BuiltList, [FullType(_16.GetConsignmentLoanFieldsApiLoanFieldData)]),
      () => ListBuilder<_16.GetConsignmentLoanFieldsApiLoanFieldData>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_30.GetUiSetupAllApiBizUnit)]),
      () => ListBuilder<_30.GetUiSetupAllApiBizUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_31.GetUiSetupAllApiOrgUnit)]),
      () => ListBuilder<_31.GetUiSetupAllApiOrgUnit>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_43.UiClientConfiguration)]),
      () => ListBuilder<_43.UiClientConfiguration>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_45.GetUiSetupMobileApiDashboardWidget)]),
      () => ListBuilder<_45.GetUiSetupMobileApiDashboardWidget>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_47.MobileNavigationElement)]),
      () => ListBuilder<_47.MobileNavigationElement>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_48.MobileReport)]),
      () => ListBuilder<_48.MobileReport>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_63.BodySide)]),
      () => ListBuilder<_63.BodySide>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_64.CaseEventStatus)]),
      () => ListBuilder<_64.CaseEventStatus>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_71.ListCaseEventsApiCaseEvent)]),
      () => ListBuilder<_71.ListCaseEventsApiCaseEvent>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_72.ListCaseEventsApiCountData)]),
      () => ListBuilder<_72.ListCaseEventsApiCountData>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_80.CaseCustomValue)]),
      () => ListBuilder<_80.CaseCustomValue>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_87.HcrTeam)]),
      () => ListBuilder<_87.HcrTeam>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_84.Physician)]),
      () => ListBuilder<_84.Physician>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_86.Hospital)]),
      () => ListBuilder<_86.Hospital>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_82.Procedure)]),
      () => ListBuilder<_82.Procedure>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_83.SubProcedure)]),
      () => ListBuilder<_83.SubProcedure>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_81.CaseType)]),
      () => ListBuilder<_81.CaseType>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_113.OrderHeaderLite)]),
      () => ListBuilder<_113.OrderHeaderLite>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_115.CaseCustomFieldValue)]),
      () => ListBuilder<_115.CaseCustomFieldValue>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_123.GetCaseEventDetailApiCaseDoc)]),
      () => ListBuilder<_123.GetCaseEventDetailApiCaseDoc>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_130.AttributableObject)]),
      () => ListBuilder<_130.AttributableObject>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_129.ListConversationsApiConversation)]),
      () => ListBuilder<_129.ListConversationsApiConversation>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_136.GetConversationApiParticipant)]),
      () => ListBuilder<_136.GetConversationApiParticipant>())
  ..addBuilderFactory(
      FullType(BuiltList, [FullType(_138.MessageMessageParticipant)]),
      () => ListBuilder<_138.MessageMessageParticipant>())
  ..addBuilderFactory(FullType(BuiltList, [FullType(_137.Message)]),
      () => ListBuilder<_137.Message>())
  ..add(_0.AppState.serializer)
  ..add(_1.ApiCommand.serializer)
  ..add(_1.ApiResultCode.serializer)
  ..add(_1.ApiResult.serializer)
  ..add(_1.ApiState.serializer)
  ..addBuilderFactory(FullType(_1.ApiCommand, [FullType(_2.LoginRequest)]),
      () => _1.ApiCommandBuilder<_2.LoginRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_49.GetUiSetupMobileApiRequest)]),
      () => _1.ApiCommandBuilder<_49.GetUiSetupMobileApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_62.ListCaseEventsApiRequest)]),
      () => _1.ApiCommandBuilder<_62.ListCaseEventsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_75.CreateCaseEventApiRequest)]),
      () => _1.ApiCommandBuilder<_75.CreateCaseEventApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_90.SearchHcrTeamsApiRequest)]),
      () => _1.ApiCommandBuilder<_90.SearchHcrTeamsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand,
          [FullType(_92.ListSurgeonPhysiciansForSchedulingApiRequest)]),
      () => _1.ApiCommandBuilder<
          _92.ListSurgeonPhysiciansForSchedulingApiRequest>())
  ..addBuilderFactory(
      FullType(
          _1.ApiCommand, [FullType(_94.ListHospitalsForSchedulingApiRequest)]),
      () => _1.ApiCommandBuilder<_94.ListHospitalsForSchedulingApiRequest>())
  ..addBuilderFactory(
      FullType(
          _1.ApiCommand, [FullType(_96.ListProceduresForSchedulingApiRequest)]),
      () => _1.ApiCommandBuilder<_96.ListProceduresForSchedulingApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_98.ListSubProceduresApiRequest)]),
      () => _1.ApiCommandBuilder<_98.ListSubProceduresApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_100.ListCaseTypesApiRequest)]),
      () => _1.ApiCommandBuilder<_100.ListCaseTypesApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_103.GetCaseEventDetailApiRequest)]),
      () => _1.ApiCommandBuilder<_103.GetCaseEventDetailApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_126.ListConversationsApiRequest)]),
      () => _1.ApiCommandBuilder<_126.ListConversationsApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_134.GetConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_134.GetConversationApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_141.CreateConversationApiRequest)]),
      () => _1.ApiCommandBuilder<_141.CreateConversationApiRequest>())
  ..addBuilderFactory(
      FullType(_1.ApiCommand, [FullType(_144.CreateMessageApiRequest)]),
      () => _1.ApiCommandBuilder<_144.CreateMessageApiRequest>())
  ..addBuilderFactory(FullType(_1.ApiResult, [FullType(_2.LoginResponse)]),
      () => _1.ApiResultBuilder<_2.LoginResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_3.GetUiSetupMobileApiResponse)]),
      () => _1.ApiResultBuilder<_3.GetUiSetupMobileApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_70.ListCaseEventsApiResponse)]),
      () => _1.ApiResultBuilder<_70.ListCaseEventsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_89.CreateCaseEventApiResponse)]),
      () => _1.ApiResultBuilder<_89.CreateCaseEventApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_91.SearchHcrTeamsApiResponse)]),
      () => _1.ApiResultBuilder<_91.SearchHcrTeamsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult,
          [FullType(_93.ListSurgeonPhysiciansForSchedulingApiResponse)]),
      () => _1.ApiResultBuilder<
          _93.ListSurgeonPhysiciansForSchedulingApiResponse>())
  ..addBuilderFactory(
      FullType(
          _1.ApiResult, [FullType(_95.ListHospitalsForSchedulingApiResponse)]),
      () => _1.ApiResultBuilder<_95.ListHospitalsForSchedulingApiResponse>())
  ..addBuilderFactory(
      FullType(
          _1.ApiResult, [FullType(_97.ListProceduresForSchedulingApiResponse)]),
      () => _1.ApiResultBuilder<_97.ListProceduresForSchedulingApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_99.ListSubProceduresApiResponse)]),
      () => _1.ApiResultBuilder<_99.ListSubProceduresApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_101.ListCaseTypesApiResponse)]),
      () => _1.ApiResultBuilder<_101.ListCaseTypesApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_104.GetCaseEventDetailApiResponse)]),
      () => _1.ApiResultBuilder<_104.GetCaseEventDetailApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_128.ListConversationsApiResponse)]),
      () => _1.ApiResultBuilder<_128.ListConversationsApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_135.GetConversationApiResponse)]),
      () => _1.ApiResultBuilder<_135.GetConversationApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_142.CreateConversationApiResponse)]),
      () => _1.ApiResultBuilder<_142.CreateConversationApiResponse>())
  ..addBuilderFactory(
      FullType(_1.ApiResult, [FullType(_145.CreateMessageApiResponse)]),
      () => _1.ApiResultBuilder<_145.CreateMessageApiResponse>())
  ..add(_2.LoginResponse.serializer)
  ..add(_2.LoginRequest.serializer)
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
  ..add(_16.GetConsignmentLoanFieldsApiLoanFieldData.serializer)
  ..add(_17.GetConsignmentLoanFieldsApiLoanField.serializer)
  ..add(_18.GetUiSetupAllApiUser.serializer)
  ..add(_19.UserPerspective.serializer)
  ..add(_20.MoveLocale.serializer)
  ..add(_21.MoveDateRegion.serializer)
  ..add(_22.Contact.serializer)
  ..add(_23.ContactType.serializer)
  ..add(_24.GeneralContactType.serializer)
  ..add(_25.Email.serializer)
  ..add(_26.PersonName.serializer)
  ..add(_27.SSOType.serializer)
  ..add(_28.MfaType.serializer)
  ..add(_29.GetUiSetupAllApiOrgInfo.serializer)
  ..add(_30.GetUiSetupAllApiBizUnit.serializer)
  ..add(_31.GetUiSetupAllApiOrgUnit.serializer)
  ..add(_32.GetUiSetupAllApiUserPermissions.serializer)
  ..add(_33.SystemAdmin.serializer)
  ..add(_34.Ae.serializer)
  ..add(_35.OrgType.serializer)
  ..add(_36.PhoneNumber.serializer)
  ..add(_37.Hcp.serializer)
  ..add(_38.HcpType.serializer)
  ..add(_39.Hcr.serializer)
  ..add(_40.HcrType.serializer)
  ..add(_41.Dce.serializer)
  ..add(_42.Consumer.serializer)
  ..add(_43.UiClientConfiguration.serializer)
  ..add(_44.UiClientConfigurationType.serializer)
  ..add(_45.GetUiSetupMobileApiDashboardWidget.serializer)
  ..add(_46.MobileDashboardWidgetType.serializer)
  ..add(_47.MobileNavigationElement.serializer)
  ..add(_48.MobileReport.serializer)
  ..add(_49.GetUiSetupMobileApiRequest.serializer)
  ..add(_50.MobilePlatform.serializer)
  ..add(_51.NavState.serializer)
  ..add(_52.SplashState.serializer)
  ..add(_53.ScaffoldState.serializer)
  ..add(_54.DrawerState.serializer)
  ..add(_55.LoginState.serializer)
  ..add(_56.DashboardState.serializer)
  ..add(_57.BottomBarState.serializer)
  ..add(_58.DashboardModuleState.serializer)
  ..add(_59.AuthModuleState.serializer)
  ..add(_60.SchedulingModuleState.serializer)
  ..add(_61.CaseEventListState.serializer)
  ..add(_62.ListCaseEventsApiRequest.serializer)
  ..add(_63.BodySide.serializer)
  ..add(_64.CaseEventStatus.serializer)
  ..add(_65.Gender.serializer)
  ..add(_66.PaginationParams.serializer)
  ..add(_67.OrderByParams.serializer)
  ..addBuilderFactory(
      FullType(_67.OrderByParams, [FullType(_68.ListCaseEventsApiOrderBy)]),
      () => _67.OrderByParamsBuilder<_68.ListCaseEventsApiOrderBy>())
  ..add(_68.ListCaseEventsApiOrderBy.serializer)
  ..add(_69.OrderByDirection.serializer)
  ..add(_70.ListCaseEventsApiResponse.serializer)
  ..add(_71.ListCaseEventsApiCaseEvent.serializer)
  ..add(_72.ListCaseEventsApiCountData.serializer)
  ..add(_73.CaseEventListFilterState.serializer)
  ..add(_74.CreateCaseEventState.serializer)
  ..add(_75.CreateCaseEventApiRequest.serializer)
  ..add(_76.LengthMeasurementType.serializer)
  ..add(_77.WeightMeasurementType.serializer)
  ..add(_78.Ethnicity.serializer)
  ..add(_79.CreateCaseEventApiInsurance.serializer)
  ..add(_80.CaseCustomValue.serializer)
  ..add(_81.CaseType.serializer)
  ..add(_82.Procedure.serializer)
  ..add(_83.SubProcedure.serializer)
  ..add(_84.Physician.serializer)
  ..add(_85.Address.serializer)
  ..add(_86.Hospital.serializer)
  ..add(_87.HcrTeam.serializer)
  ..add(_88.HcrTeamType.serializer)
  ..add(_89.CreateCaseEventApiResponse.serializer)
  ..add(_90.SearchHcrTeamsApiRequest.serializer)
  ..add(_91.SearchHcrTeamsApiResponse.serializer)
  ..add(_92.ListSurgeonPhysiciansForSchedulingApiRequest.serializer)
  ..add(_93.ListSurgeonPhysiciansForSchedulingApiResponse.serializer)
  ..add(_94.ListHospitalsForSchedulingApiRequest.serializer)
  ..add(_95.ListHospitalsForSchedulingApiResponse.serializer)
  ..add(_96.ListProceduresForSchedulingApiRequest.serializer)
  ..add(_97.ListProceduresForSchedulingApiResponse.serializer)
  ..add(_98.ListSubProceduresApiRequest.serializer)
  ..add(_99.ListSubProceduresApiResponse.serializer)
  ..add(_100.ListCaseTypesApiRequest.serializer)
  ..add(_101.ListCaseTypesApiResponse.serializer)
  ..add(_102.CaseEventDetailState.serializer)
  ..add(_103.GetCaseEventDetailApiRequest.serializer)
  ..add(_104.GetCaseEventDetailApiResponse.serializer)
  ..add(_105.GetCaseEventDetailApiCaseEvent.serializer)
  ..add(_106.BizUnit.serializer)
  ..add(_107.OrgUnit.serializer)
  ..add(_108.Patient.serializer)
  ..add(_109.GetCaseEventDetailApiLoan.serializer)
  ..add(_110.LoanStatus.serializer)
  ..add(_111.OrderStatus.serializer)
  ..add(_112.Insurance.serializer)
  ..add(_113.OrderHeaderLite.serializer)
  ..add(_114.CustomerAddress.serializer)
  ..add(_115.CaseCustomFieldValue.serializer)
  ..add(_116.CustomFieldDataType.serializer)
  ..add(_117.GetCaseEventDetailApiLoanReturnData.serializer)
  ..add(_118.GetCaseEventDetailApiEvent.serializer)
  ..add(_119.EventType.serializer)
  ..add(_120.EventStatus.serializer)
  ..add(_121.EventState.serializer)
  ..add(_122.GetCaseEventDetailApiDisplayRules.serializer)
  ..add(_123.GetCaseEventDetailApiCaseDoc.serializer)
  ..add(_124.MessagingModuleState.serializer)
  ..add(_125.ConversationListState.serializer)
  ..add(_126.ListConversationsApiRequest.serializer)
  ..add(_127.AttributableType.serializer)
  ..add(_128.ListConversationsApiResponse.serializer)
  ..add(_129.ListConversationsApiConversation.serializer)
  ..add(_130.AttributableObject.serializer)
  ..add(_131.ConversationListFilterState.serializer)
  ..add(_132.UpdateConversationState.serializer)
  ..add(_133.ConversationState.serializer)
  ..add(_134.GetConversationApiRequest.serializer)
  ..add(_135.GetConversationApiResponse.serializer)
  ..add(_136.GetConversationApiParticipant.serializer)
  ..add(_137.Message.serializer)
  ..add(_138.MessageMessageParticipant.serializer)
  ..add(_139.GetConversationApiDisplayRules.serializer)
  ..add(_140.CreateConversationState.serializer)
  ..add(_141.CreateConversationApiRequest.serializer)
  ..add(_142.CreateConversationApiResponse.serializer)
  ..add(_143.CreateMessageState.serializer)
  ..add(_144.CreateMessageApiRequest.serializer)
  ..add(_145.CreateMessageApiResponse.serializer)
  ..add(_146.DirectoryModuleState.serializer)
  ..add(_147.PushPayloads.serializer)
  ..add(_148.AuditFilePushMessage.serializer)
  ..add(_149.AuditFilePushMessageFileUpdateType.serializer)
  ..add(_150.AuditFileUpdatePushMessage.serializer)
  ..add(_151.AuditFileUpdatePushMessageAuditFileUpdateType.serializer)
  ..add(_152.AuditUpdatedPushMessage.serializer)
  ..add(_153.CaseEventFileUpdatePushMessage.serializer)
  ..add(_154.CaseEventFileUpdatePushMessageCaseEventFileUpdateType.serializer)
  ..add(_155.CaseEventUpdatePushMessage.serializer)
  ..add(_156.CaseEventUpdateType.serializer)
  ..add(_157.CaseRequirementsUpdatedPushMessage.serializer)
  ..add(_158.CaseScheduleUpdatePushMessage.serializer)
  ..add(_159.ConversationUpdatedPushMessage.serializer)
  ..add(_160.CreatePickFinishedPushMessage.serializer)
  ..add(_161.ExportLogFilePushMessage.serializer)
  ..add(_162.ExportLogFilePushMessageFileUpdateType.serializer)
  ..add(_163.FacilityUpdatedPushMessage.serializer)
  ..add(_164.ImportLogFilePushMessage.serializer)
  ..add(_165.ImportLogFilePushMessageFileUpdateType.serializer)
  ..add(_166.IssueRegeneratedPushMessage.serializer)
  ..add(_167.ItemFileUpdatePushMessage.serializer)
  ..add(_168.ItemFileUpdatePushMessageUpdateType.serializer)
  ..add(_169.LoanDetailPushMessage.serializer)
  ..add(_170.LoanLinesUpdatedPushMessage.serializer)
  ..add(_171.MessageAddedPushMessage.serializer)
  ..add(_172.MessagesReadUnreadPushMessage.serializer)
  ..add(_173.MessagingBadgeUpdatedPushMessage.serializer)
  ..add(_174.NoteAddedUpdatedPushMessage.serializer)
  ..add(_175.OrderDetailPushMessage.serializer)
  ..add(_176.OrderFilePushMessage.serializer)
  ..add(_177.OrderFilePushMessageFileUpdateType.serializer)
  ..add(_178.RefreshConversationListPushMessage.serializer)
  ..add(_179.ShipmentFileUpdatePushMessage.serializer)
  ..add(_180.ShipmentFileUpdatePushMessageFileUpdateType.serializer)
  ..add(_181.ShipmentUpdatedPushMessage.serializer)
  ..add(_182.StockSummaryKeyUpdatedPushMessage.serializer)
  ..add(_183.UiSetupUpdatedPushMessage.serializer)
  ..add(_184.MovePresenceEvent.serializer)
  ..add(_185.PresenceEventType.serializer)
  ..add(_186.MovePresence.serializer));

// ignore_for_file: implementation_imports,always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
