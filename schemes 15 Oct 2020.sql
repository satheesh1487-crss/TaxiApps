USE [master]
GO
/****** Object:  Database [TaxiAppzDB]    Script Date: 15-10-2020 11:45:57 ******/
CREATE DATABASE [TaxiAppzDB]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TaxiAppzDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TaxiAppzDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TaxiAppzDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TaxiAppzDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TaxiAppzDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TaxiAppzDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [TaxiAppzDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TaxiAppzDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TaxiAppzDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TaxiAppzDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TaxiAppzDB] SET  MULTI_USER 
GO
ALTER DATABASE [TaxiAppzDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TaxiAppzDB] SET DB_CHAINING OFF 
GO
USE [TaxiAppzDB]
GO
/****** Object:  StoredProcedure [dbo].[GetAdminDetails]    Script Date: 15-10-2020 11:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAdminDetails]
as 
begin
 select firstname,lastname,password,role from tab_admin
 end


GO
/****** Object:  Table [dbo].[set_privilege]    Script Date: 15-10-2020 11:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[set_privilege](
	[privilegeid] [bigint] IDENTITY(1,1) NOT NULL,
	[dashboard] [bit] NULL,
	[dashboard_dash] [bit] NULL,
	[admin_mgnt] [bit] NULL,
	[admin_manage_admin] [bit] NULL,
	[admin_manage_admin_add] [bit] NULL,
	[admin_manage_admin_edit] [bit] NULL,
	[admin_manage_admin_delete] [bit] NULL,
	[admin_manage_role] [bit] NULL,
	[admin_manage_role_add] [bit] NULL,
	[admin_manage_role_edit] [bit] NULL,
	[admin_manage_role_privilege] [bit] NULL,
	[user_mgnt] [bit] NULL,
	[user_manage_user] [bit] NULL,
	[user_manage_user_add] [bit] NULL,
	[user_manage_user_edit] [bit] NULL,
	[user_manage_user_delete] [bit] NULL,
	[user_manage_user_wallet] [bit] NULL,
	[user_blocked_user] [bit] NULL,
	[user_blocked_user_approve] [bit] NULL,
	[driver_mgnt] [bit] NULL,
	[driver_manage_driver] [bit] NULL,
	[driver_manage_driver_add] [bit] NULL,
	[driver_manage_driver_upload] [bit] NULL,
	[driver_manage_driver_edit] [bit] NULL,
	[driver_manage_driver_delete] [bit] NULL,
	[driver_manage_driver_edit_reward] [bit] NULL,
	[driver_manage_driver_approve] [bit] NULL,
	[driver_wallet_payment] [bit] NULL,
	[driver_wallet_payment_wallet] [bit] NULL,
	[driver_wallet_payment_add] [bit] NULL,
	[driver_account_payment] [bit] NULL,
	[driver_account_payment_add] [bit] NULL,
	[driver_account_payment_transfer] [bit] NULL,
	[driver_earning_payment] [bit] NULL,
	[driver_earning_payment_earning] [bit] NULL,
	[driver_earning_payment_savings] [bit] NULL,
	[driver_earning_payment_cancel] [bit] NULL,
	[driver_fine] [bit] NULL,
	[driver_fine_add] [bit] NULL,
	[driver_fine_pay] [bit] NULL,
	[driver_fine_edit] [bit] NULL,
	[driver_fine_delete] [bit] NULL,
	[driver_bonus] [bit] NULL,
	[driver_bonus_add] [bit] NULL,
	[driver_blocked] [bit] NULL,
	[driver_blocked_approve] [bit] NULL,
	[zone_mgnt] [bit] NULL,
	[zone_manage_zone] [bit] NULL,
	[zone_manage_zone_add] [bit] NULL,
	[zone_manage_zone_map] [bit] NULL,
	[zone_manage_zone_edit] [bit] NULL,
	[zone_manage_zone_delete] [bit] NULL,
	[zone_manage_zone_active] [bit] NULL,
	[zone_manage_zone_inactive] [bit] NULL,
	[zone_operation] [bit] NULL,
	[zone_operation_add] [bit] NULL,
	[zone_operation_map] [bit] NULL,
	[zone_operation_zone_settings] [bit] NULL,
	[zone_operation_edit] [bit] NULL,
	[zone_operation_delete] [bit] NULL,
	[vehicle_mgnt] [bit] NULL,
	[vehicle_manage_type] [bit] NULL,
	[vehicle_manage_edit] [bit] NULL,
	[vehicle_manage_delete] [bit] NULL,
	[vehicle_manage_active] [bit] NULL,
	[vehicle_manage_inactive] [bit] NULL,
	[vehicle_pricing] [bit] NULL,
	[vehicle_pricing_set] [bit] NULL,
	[vehicle_pricing_surge] [bit] NULL,
	[vehicle_pricing_default] [bit] NULL,
	[vehicle_pricing_undefault] [bit] NULL,
	[manage_currency_mgnt] [bit] NULL,
	[manage_currency_edit] [bit] NULL,
	[manage_currency_delete] [bit] NULL,
	[manage_currency_active] [bit] NULL,
	[manage_currency_inactive] [bit] NULL,
	[company_mgnt] [bit] NULL,
	[company_manage] [bit] NULL,
	[company_manage_edit] [bit] NULL,
	[company_manage_delete] [bit] NULL,
	[company_drivers] [bit] NULL,
	[company_driver_edit] [bit] NULL,
	[company_driver_delete] [bit] NULL,
	[company_transaction] [bit] NULL,
	[company_transaction_edit] [bit] NULL,
	[company_transaction_delete] [bit] NULL,
	[request_mgnt] [bit] NULL,
	[request_manage] [bit] NULL,
	[request_manage_view] [bit] NULL,
	[request_schedule] [bit] NULL,
	[request_schedule_view] [bit] NULL,
	[request_schedule_cancel] [bit] NULL,
	[transaction_details_mgnt] [bit] NULL,
	[transaction_trans_details] [bit] NULL,
	[manage_notification_mgnt] [bit] NULL,
	[manage_notifi_push] [bit] NULL,
	[manage_sms_option] [bit] NULL,
	[manage_sms_edit] [bit] NULL,
	[manage_sms_active] [bit] NULL,
	[manage_sms_inactive] [bit] NULL,
	[manage_sms] [bit] NULL,
	[manage_email] [bit] NULL,
	[manage_email_edit] [bit] NULL,
	[manage_email_active] [bit] NULL,
	[manage_email_inactive] [bit] NULL,
	[referral_mgnt] [bit] NULL,
	[referral_manage_option] [bit] NULL,
	[referral_user] [bit] NULL,
	[referral_driver] [bit] NULL,
	[promo_code_mgnt] [bit] NULL,
	[promo_manage_option] [bit] NULL,
	[promo_manage_add] [bit] NULL,
	[promo_manage_edit] [bit] NULL,
	[promo_manage_delete] [bit] NULL,
	[promo_manage_active] [bit] NULL,
	[promo_manage_inactive] [bit] NULL,
	[promo_manage_dash] [bit] NULL,
	[promo_transaction] [bit] NULL,
	[cancel_mgnt] [bit] NULL,
	[cancel_manage_user] [bit] NULL,
	[cancel_manage_user_add] [bit] NULL,
	[cancel_manage_user_edit] [bit] NULL,
	[cancel_manage_user_compensate] [bit] NULL,
	[cancel_manage_user_delete] [bit] NULL,
	[cancel_manage_user_active] [bit] NULL,
	[cancel_manage_user_inactive] [bit] NULL,
	[cancel_manage_driver] [bit] NULL,
	[cancel_manage_driver_add] [bit] NULL,
	[cancel_manage_driver_edit] [bit] NULL,
	[cancel_manage_driver_compensate] [bit] NULL,
	[cancel_manage_driver_delete] [bit] NULL,
	[cancel_manage_driver_active] [bit] NULL,
	[cancel_manage_driver_inactive] [bit] NULL,
	[review_mgnt] [bit] NULL,
	[review_usertodriver] [bit] NULL,
	[review_usertodriver_active] [bit] NULL,
	[review_usertodriver_inactive] [bit] NULL,
	[review_drivertouser] [bit] NULL,
	[complaint_mgnt] [bit] NULL,
	[complaint_manage_user] [bit] NULL,
	[complaint_user_add] [bit] NULL,
	[complaint_user_taken] [bit] NULL,
	[complaint_user_solved] [bit] NULL,
	[complaint_manage_driver] [bit] NULL,
	[complaint_driver_add] [bit] NULL,
	[complaint_driver_taken] [bit] NULL,
	[complaint_driver_solved] [bit] NULL,
	[reports_mgnt] [bit] NULL,
	[reports_user] [bit] NULL,
	[reports_blocked_user] [bit] NULL,
	[reports_driver] [bit] NULL,
	[reports_blocked_driver] [bit] NULL,
	[reports_finance] [bit] NULL,
	[reports_business] [bit] NULL,
	[reports_travel] [bit] NULL,
	[reports_rating] [bit] NULL,
	[reports_ledger] [bit] NULL,
	[manage_settings_mgnt] [bit] NULL,
	[manage_settings] [bit] NULL,
	[manage_settings_trip] [bit] NULL,
	[manage_settings_wallet] [bit] NULL,
	[manage_settings_installation] [bit] NULL,
	[manage_settings_general] [bit] NULL,
	[manage_FAQ_mgnt] [bit] NULL,
	[manage_FAQ] [bit] NULL,
	[manage_FAQ_add] [bit] NULL,
	[manage_FAQ_edit] [bit] NULL,
	[manage_FAQ_delete] [bit] NULL,
	[manage_FAQ_active] [bit] NULL,
	[manage_FAQ_inactive] [bit] NULL,
	[manage_map_mgnt] [bit] NULL,
	[manage_map] [bit] NULL,
	[manage_map_view] [bit] NULL,
	[manage_heat_map] [bit] NULL,
	[roleid] [bigint] NULL,
	[createdby] [varchar](400) NULL,
	[createdat] [datetime] NULL,
	[updatedby] [varchar](400) NULL,
	[updatedat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[privilegeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[settings]    Script Date: 15-10-2020 11:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[settings](
	[settingid] [bigint] IDENTITY(1,1) NOT NULL,
	[trip_how_trip_assign] [varchar](300) NOT NULL,
	[trip_how_many_seconds] [varchar](300) NOT NULL,
	[trip_radius_to_get_captains] [varchar](300) NOT NULL,
	[trip_auto_transfer] [varchar](300) NOT NULL,
	[trip_captain_auto_offline] [varchar](300) NOT NULL,
	[trip_radius_near_pickup] [varchar](300) NOT NULL,
	[trip_how_many_trips] [varchar](300) NOT NULL,
	[trip_pickup_location] [varchar](300) NOT NULL,
	[trip_top20_captains] [varchar](300) NOT NULL,
	[trip_grace_time_waiting] [varchar](300) NOT NULL,
	[trip_minimum_time_period] [varchar](300) NOT NULL,
	[trip_dispatch_request] [varchar](300) NOT NULL,
	[trip_cancel_button_enable] [varchar](300) NOT NULL,
	[trip_reward_points] [varchar](300) NOT NULL,
	[wallet_user_wallet_amount] [varchar](300) NOT NULL,
	[wallet_captain_wallet_amount] [varchar](300) NOT NULL,
	[wallet_maximum_balance] [varchar](300) NOT NULL,
	[wallet_maximum_amount_added] [varchar](300) NOT NULL,
	[installation_google_browser_key] [varchar](300) NOT NULL,
	[installation_sms_gateway_url] [varchar](300) NOT NULL,
	[installation_sms_account_sid] [varchar](300) NOT NULL,
	[installation_sms_auth_taken] [varchar](300) NOT NULL,
	[installation_sms_auth_number] [varchar](300) NOT NULL,
	[installation_braintree_environment] [varchar](300) NOT NULL,
	[installation_sandbox] [varchar](300) NOT NULL,
	[installation_braintree_merchant_id] [varchar](300) NOT NULL,
	[installation_braintree_public_key] [varchar](300) NOT NULL,
	[installation_braintree_private_key] [varchar](300) NOT NULL,
	[installation_braintree_master_merchant] [varchar](300) NOT NULL,
	[installation_braintree_default_merchant] [varchar](300) NOT NULL,
	[installation_payment_gateway_merchant_id] [varchar](300) NOT NULL,
	[installation_stripe_payment_public_key] [varchar](300) NOT NULL,
	[installation_stripe_payment_private_key] [varchar](300) NOT NULL,
	[installation_stripe_payment_master_merchant] [varchar](300) NOT NULL,
	[installation_stripe_payment_default_merchant] [varchar](300) NOT NULL,
	[general_application_name] [varchar](300) NOT NULL,
	[general_application_logo] [varchar](300) NOT NULL,
	[general_head_office_number] [varchar](300) NOT NULL,
	[general_customer_care_number] [varchar](300) NOT NULL,
	[general_help_email_address] [varchar](300) NOT NULL,
	[general_time_zone] [varchar](300) NOT NULL,
	[isActive] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[settingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_admin]    Script Date: 15-10-2020 11:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_admin](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[admin_key] [nvarchar](200) NULL,
	[admin_reference] [int] NULL,
	[area_name] [bigint] NULL,
	[language] [int] NULL,
	[firstname] [nvarchar](200) NULL,
	[lastname] [nvarchar](200) NULL,
	[registration_code] [nvarchar](255) NULL,
	[email] [nvarchar](191) NULL,
	[password] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[emergency_number] [nvarchar](20) NULL,
	[remember_token] [nvarchar](2000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[is_active] [int] NULL,
	[role] [bigint] NULL,
	[profile_pic] [nvarchar](100) NULL,
	[zone_access] [bigint] NULL,
	[created_by] [varchar](200) NULL,
	[updated_by] [varchar](200) NULL,
	[IsDeleted] [int] NULL,
	[deleted_by] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_admin_details]    Script Date: 15-10-2020 11:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_admin_details](
	[admindtlsid] [bigint] IDENTITY(1,1) NOT NULL,
	[admin_id] [bigint] NULL,
	[address] [nvarchar](300) NULL,
	[Country_id] [bigint] NULL,
	[postalCode] [bigint] NULL,
	[document_name] [nvarchar](100) NULL,
	[document] [nvarchar](200) NULL,
	[driver_document_count] [int] NULL,
	[last_login_ip_address] [nvarchar](100) NULL,
	[block] [int] NULL,
	[login_attempt] [bigint] NULL,
	[isActive] [int] NULL,
	[created_by] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_by] [varchar](200) NULL,
	[IsDeleted] [int] NULL,
	[deleted_by] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[admindtlsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Admin_Document]    Script Date: 15-10-2020 11:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Admin_Document](
	[admindocumentid] [bigint] IDENTITY(1,1) NOT NULL,
	[adminid] [bigint] NULL,
	[document_name] [nvarchar](300) NOT NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](300) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[admindocumentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_cancellation_fee_for_driver]    Script Date: 15-10-2020 11:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_cancellation_fee_for_driver](
	[cancellation_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Driverid] [bigint] NULL,
	[request_id] [bigint] NULL,
	[amount] [float] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cancellation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_common_currency]    Script Date: 15-10-2020 11:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_common_currency](
	[currencyid] [bigint] IDENTITY(1,1) NOT NULL,
	[currencyname] [nvarchar](200) NOT NULL,
	[currency_symbol] [varchar](100) NOT NULL,
	[currenciesid] [bigint] NULL,
	[isActive] [int] NULL,
	[isDeleted] [int] NULL,
	[Created_by] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [nvarchar](100) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [nvarchar](100) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[currencyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Common_Languages]    Script Date: 15-10-2020 11:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_Common_Languages](
	[Languageid] [int] IDENTITY(1,1) NOT NULL,
	[Short_Lang] [nvarchar](50) NULL,
	[Name] [nvarchar](30) NULL,
	[Created_By] [nvarchar](100) NULL,
	[Created_At] [datetime] NULL,
	[Updated_At] [datetime] NULL,
	[Deleted_At] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Languageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_countries]    Script Date: 15-10-2020 11:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_countries](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[full_name] [nvarchar](255) NULL,
	[capital] [nvarchar](255) NULL,
	[citizenship] [nvarchar](255) NULL,
	[currency] [nvarchar](255) NULL,
	[currency_code] [nvarchar](255) NULL,
	[currency_sub_unit] [nvarchar](255) NULL,
	[currency_symbol] [nvarchar](3) NULL,
	[country_code] [nvarchar](3) NOT NULL,
	[region_code] [nvarchar](3) NOT NULL,
	[sub_region_code] [nvarchar](3) NOT NULL,
	[eea] [int] NOT NULL,
	[calling_code] [nvarchar](3) NULL,
	[iso_3166_2] [nvarchar](2) NOT NULL,
	[iso_3166_3] [nvarchar](3) NOT NULL,
	[currency_decimals] [decimal](18, 0) NOT NULL,
	[flag] [nvarchar](191) NULL,
	[active] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_Country]    Script Date: 15-10-2020 11:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Country](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Name] [nvarchar](200) NULL,
	[Currency] [varchar](100) NULL,
	[d_code] [varchar](20) NULL,
	[Created_By] [nvarchar](100) NULL,
	[Created_At] [datetime] NULL,
	[Updated_At] [datetime] NULL,
	[Deleted_At] [datetime] NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[updated_by] [varchar](500) NULL,
	[deleted_by] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_currencies]    Script Date: 15-10-2020 11:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_currencies](
	[currenciesid] [bigint] IDENTITY(1,1) NOT NULL,
	[countryid] [bigint] NULL,
	[currency] [varchar](100) NULL,
	[code] [varchar](25) NULL,
	[symbol] [varchar](25) NULL,
	[thousand_separator] [varchar](10) NULL,
	[decimal_separator] [varchar](10) NULL,
	[IsActive] [int] NULL,
	[isDelete] [int] NULL,
	[created_By] [nvarchar](200) NULL,
	[Created_at] [datetime] NULL,
	[updated_by] [nvarchar](200) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [nvarchar](200) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[currenciesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Document_ApporvalStatus]    Script Date: 15-10-2020 11:46:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Document_ApporvalStatus](
	[Doc_ApprovalID] [bigint] IDENTITY(1,1) NOT NULL,
	[Doc_Status] [varchar](300) NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Doc_ApprovalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_driver_bonus]    Script Date: 15-10-2020 11:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_driver_bonus](
	[driverbonusid] [bigint] IDENTITY(1,1) NOT NULL,
	[Driverid] [bigint] NULL,
	[bonusamount] [float] NULL,
	[bonus_reason] [nvarchar](600) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[createdby] [varchar](300) NULL,
	[createdat] [datetime] NULL,
	[updatedby] [varchar](300) NULL,
	[updatedat] [datetime] NULL,
	[deletedby] [varchar](300) NULL,
	[deletedat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[driverbonusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_driver_cancellation]    Script Date: 15-10-2020 11:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_driver_cancellation](
	[Driver_CancelId] [bigint] IDENTITY(1,1) NOT NULL,
	[zonetypeid] [bigint] NULL,
	[paymentstatus] [varchar](50) NULL,
	[arrivalstatus] [varchar](100) NULL,
	[Cancellation_Reason_English] [nvarchar](400) NULL,
	[Cancellation_Reason_Arabic] [nvarchar](400) NULL,
	[Cancellation_Reason_Spanish] [nvarchar](400) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [varchar](200) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Driver_CancelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Driver_Complaint]    Script Date: 15-10-2020 11:46:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Driver_Complaint](
	[Driver_ComplaintID] [bigint] IDENTITY(1,1) NOT NULL,
	[zoneid] [bigint] NULL,
	[DriverComplaint_type] [nvarchar](100) NULL,
	[DriverComplaint_title] [nvarchar](400) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [varchar](200) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Driver_ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Driver_Documents]    Script Date: 15-10-2020 11:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Driver_Documents](
	[DriverDoc_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Driverid] [bigint] NULL,
	[Documentid] [bigint] NULL,
	[ExpireDate] [datetime] NULL,
	[Uploaded_FileName] [varchar](300) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [varchar](200) NULL,
	[Deleted_at] [datetime] NULL,
	[DocumentID_Number] [varchar](100) NULL,
	[Comments] [varchar](500) NULL,
	[Doc_ApprovalID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[DriverDoc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_driver_fine]    Script Date: 15-10-2020 11:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_driver_fine](
	[driverfineid] [bigint] IDENTITY(1,1) NOT NULL,
	[Driverid] [bigint] NULL,
	[fineamount] [float] NULL,
	[fine_reason] [nvarchar](600) NULL,
	[finepaid_status] [bit] NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[createdby] [varchar](300) NULL,
	[createdat] [datetime] NULL,
	[updatedby] [varchar](300) NULL,
	[updatedat] [datetime] NULL,
	[deletedby] [varchar](300) NULL,
	[deletedat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[driverfineid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_driver_wallet]    Script Date: 15-10-2020 11:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_driver_wallet](
	[driverwalletid] [bigint] IDENTITY(1,1) NOT NULL,
	[Driverid] [bigint] NULL,
	[Transactionid] [bigint] NULL,
	[currencyid] [bigint] NULL,
	[walletamount] [float] NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[createdby] [varchar](300) NULL,
	[createdat] [datetime] NULL,
	[updatedby] [varchar](300) NULL,
	[updatedat] [datetime] NULL,
	[deletedby] [varchar](300) NULL,
	[deletedat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[driverwalletid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Drivers]    Script Date: 15-10-2020 11:46:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Drivers](
	[Driverid] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](300) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[ContactNo] [nvarchar](15) NULL,
	[Gender] [varchar](10) NULL,
	[Driverregno] [nvarchar](500) NULL,
	[Address] [nvarchar](1000) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[countryid] [bigint] NULL,
	[NationalID] [varchar](100) NULL,
	[servicelocid] [bigint] NULL,
	[company] [varchar](100) NULL,
	[password] [varchar](50) NULL,
	[typeid] [bigint] NULL,
	[carmodel] [varchar](100) NULL,
	[carcolor] [varchar](50) NULL,
	[carnumber] [varchar](20) NULL,
	[carmanufacturer] [varchar](100) NULL,
	[caryear] [int] NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[created_by] [varchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](200) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](200) NULL,
	[deleted_at] [datetime] NULL,
	[Reward_point] [bigint] NULL,
	[zoneid] [bigint] NULL,
	[token] [varchar](500) NULL,
	[token_expiry] [datetime] NULL,
	[device_token] [varchar](400) NULL,
	[login_by] [varchar](200) NULL,
	[login_method] [varchar](200) NULL,
	[isApproved] [bit] NULL,
	[isAvailable] [bit] NULL,
	[Online_Status] [bit] NULL,
	[Rating] [float] NULL,
	[NoofRating] [bigint] NULL,
	[Avg_Rating] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Driverid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_employee_details]    Script Date: 15-10-2020 11:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_employee_details](
	[empid] [int] IDENTITY(1,1) NOT NULL,
	[emp_firstname] [varchar](400) NULL,
	[emp_lastname] [varchar](400) NULL,
	[emp_emailid] [varchar](100) NULL,
	[emp_contactno] [bigint] NULL,
	[emp_dob] [datetime] NULL,
	[emp_age] [int] NULL,
	[emp_isactive] [bit] NULL,
	[emp_createdby] [varchar](100) NULL,
	[emp_createddate] [datetime] NULL,
	[emp_updatedby] [varchar](100) NULL,
	[emp_updatedate] [datetime] NULL,
	[gender] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_FAQ]    Script Date: 15-10-2020 11:46:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_FAQ](
	[FAQid] [bigint] IDENTITY(1,1) NOT NULL,
	[servicelocid] [bigint] NULL,
	[FAQ_Question] [nvarchar](600) NOT NULL,
	[FAQ_Answer] [nvarchar](1000) NOT NULL,
	[Complaint_Type] [varchar](200) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](300) NULL,
	[Created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
	[Deleted_by] [varchar](300) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FAQid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_General_settings]    Script Date: 15-10-2020 11:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_General_settings](
	[trip_General_id] [int] IDENTITY(1,1) NOT NULL,
	[trip_General_question] [varchar](300) NOT NULL,
	[trip_General_answer] [varchar](500) NULL,
	[isActive] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[trip_General_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_installation_settings]    Script Date: 15-10-2020 11:46:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_installation_settings](
	[trip_installation_id] [int] IDENTITY(1,1) NOT NULL,
	[trip_installation_question] [varchar](300) NOT NULL,
	[trip_Installation_answer] [varchar](500) NULL,
	[isActive] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[trip_installation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Manage_Email]    Script Date: 15-10-2020 11:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Manage_Email](
	[ManageEmailid] [bigint] IDENTITY(1,1) NOT NULL,
	[Emailtitle] [varchar](200) NOT NULL,
	[Description] [nvarchar](600) NULL,
	[isActive] [bit] NULL,
	[Created_by] [varchar](300) NULL,
	[Created_at] [datetime] NULL,
	[Updated_By] [varchar](300) NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManageEmailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_manage_Email_Hints]    Script Date: 15-10-2020 11:46:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_manage_Email_Hints](
	[ManageEmailHint] [bigint] IDENTITY(1,1) NOT NULL,
	[ManageEmailid] [bigint] NULL,
	[Hint_Keyword] [varchar](200) NULL,
	[Hint_Description] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[ManageEmailHint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Manage_Referral]    Script Date: 15-10-2020 11:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Manage_Referral](
	[Managereferral] [bigint] IDENTITY(1,1) NOT NULL,
	[ReferralWorth_Amount] [decimal](8, 2) NULL,
	[ReferralGain_Amount_PerPerson] [decimal](8, 2) NULL,
	[Trip_to_completed_torefer] [int] NULL,
	[Trip_to_completed_toearn_refferalAmount] [decimal](8, 2) NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Managereferral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_Manage_SMS]    Script Date: 15-10-2020 11:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_Manage_SMS](
	[ManageSMSid] [bigint] IDENTITY(1,1) NOT NULL,
	[SMStitle] [varchar](200) NOT NULL,
	[Description] [nvarchar](600) NULL,
	[isActive] [bit] NULL,
	[Created_by] [varchar](300) NULL,
	[Created_at] [datetime] NULL,
	[Updated_By] [varchar](300) NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManageSMSid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_manage_SMS_Hints]    Script Date: 15-10-2020 11:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_manage_SMS_Hints](
	[ManageSMSHint] [bigint] IDENTITY(1,1) NOT NULL,
	[ManageSMSid] [bigint] NULL,
	[Hint_Keyword] [varchar](200) NULL,
	[Hint_Description] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[ManageSMSHint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_ManageDocument]    Script Date: 15-10-2020 11:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_ManageDocument](
	[DocumentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Document_Name] [varchar](100) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [varchar](200) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_menu]    Script Date: 15-10-2020 11:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_menu](
	[Menuid] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[parentID] [bigint] NULL,
	[IsActive] [bit] NULL,
	[menukey] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Menuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_MenuAccess]    Script Date: 15-10-2020 11:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_MenuAccess](
	[Accessid] [bigint] IDENTITY(1,1) NOT NULL,
	[Menuid] [bigint] NULL,
	[Roleid] [bigint] NULL,
	[viewstatus] [bit] NULL,
	[createdby] [datetime] NULL,
	[updatedby] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Accessid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_menucode]    Script Date: 15-10-2020 11:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_menucode](
	[menuid] [bigint] IDENTITY(1,1) NOT NULL,
	[menuname] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[menuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_OTP_users]    Script Date: 15-10-2020 11:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_OTP_users](
	[Userotpid] [bigint] IDENTITY(1,1) NOT NULL,
	[User_Contact_no] [bigint] NOT NULL,
	[User_OTP] [int] NOT NULL,
	[User_OTP_CreatedDate] [datetime] NULL,
	[User_OTP_ExpireDate] [datetime] NULL,
	[User_Device_name] [varchar](200) NULL,
	[User_Device_IPAddress] [varchar](200) NULL,
	[isActive] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Userotpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_promo]    Script Date: 15-10-2020 11:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_promo](
	[promoid] [bigint] IDENTITY(1,1) NOT NULL,
	[Coupon_code] [nvarchar](300) NOT NULL,
	[promo_estimate_amount] [float] NULL,
	[promo_value] [bigint] NULL,
	[zoneid] [bigint] NULL,
	[promo_type] [varchar](100) NULL,
	[promo_uses] [bigint] NULL,
	[promo_users_repeateduse] [bigint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](300) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[promoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_push_notification]    Script Date: 15-10-2020 11:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_push_notification](
	[pushnotificationid] [bigint] IDENTITY(1,1) NOT NULL,
	[messagetitle] [nvarchar](200) NOT NULL,
	[messagesubtitle] [nvarchar](200) NOT NULL,
	[HasRedirectURL] [bit] NULL,
	[MessageDescription] [nvarchar](600) NULL,
	[Upload_FileName] [varchar](300) NULL,
	[isDeleted] [bit] NULL,
	[Created_by] [varchar](300) NULL,
	[Created_at] [datetime] NULL,
	[Deleted_By] [varchar](300) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[pushnotificationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_refreshtoken]    Script Date: 15-10-2020 11:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_refreshtoken](
	[reftokenid] [bigint] IDENTITY(1,1) NOT NULL,
	[userid] [bigint] NULL,
	[refreshtoken] [nvarchar](500) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[reftokenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_request]    Script Date: 15-10-2020 11:47:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_request](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Request_id] [varchar](300) NULL,
	[request_otp] [int] NULL,
	[later] [int] NOT NULL,
	[user_id] [bigint] NULL,
	[driver_id] [bigint] NULL,
	[is_share] [int] NULL,
	[no_of_seats] [int] NULL,
	[trip_start_time] [datetime] NULL,
	[is_driver_started] [bit] NULL,
	[is_driver_arrived] [bit] NULL,
	[is_trip_start] [bit] NULL,
	[is_completed] [bit] NULL,
	[is_cancelled] [bit] NULL,
	[reason] [bigint] NULL,
	[cancel_other_reason] [varchar](200) NULL,
	[cancel_method] [varchar](50) NULL,
	[distance] [decimal](10, 2) NULL,
	[waiting_time] [decimal](10, 2) NULL,
	[time] [decimal](10, 2) NULL,
	[total] [float] NULL,
	[payment_opt] [varchar](50) NULL,
	[is_paid] [varchar](50) NULL,
	[user_rated] [int] NULL,
	[driver_rated] [int] NULL,
	[payment_id] [varchar](100) NULL,
	[card_id] [bigint] NULL,
	[typeid] [bigint] NULL,
	[promo_id] [bigint] NULL,
	[timezone] [varchar](100) NULL,
	[unit] [int] NULL,
	[if_dispatch] [int] NULL,
	[dispatch_reference] [nvarchar](400) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[subscribed_driver_accept_request] [int] NULL,
	[ride_later_custom_driver] [int] NULL,
	[ride_later_custom_accepted_driver_id] [int] NULL,
	[driver_accepted_time] [datetime] NULL,
	[free_waiting_time] [int] NULL,
	[instant_trip] [varchar](100) NULL,
	[Isreschedule] [varchar](10) NULL,
	[show_cancel_button_to_driver_at_time] [datetime] NULL,
	[schedule_at_time] [datetime] NULL,
	[cancel_dialog_box_after_waiting_time] [int] NULL,
	[cancel_dialog_box_clicked_time] [datetime] NULL,
	[trip_end_time] [datetime] NULL,
	[fixed_place_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_request_meta]    Script Date: 15-10-2020 11:47:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_request_meta](
	[meta_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Request_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[driver_id] [bigint] NULL,
	[is_active] [bit] NULL,
	[assign_method] [varchar](100) NULL,
	[notification] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[meta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_request_place]    Script Date: 15-10-2020 11:47:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_request_place](
	[request_place_id] [bigint] IDENTITY(1,1) NOT NULL,
	[pick_latitude] [decimal](8, 6) NULL,
	[pick_longitude] [decimal](9, 6) NULL,
	[drop_latitude] [decimal](8, 6) NULL,
	[drop_longitude] [decimal](9, 6) NULL,
	[pick_location] [varchar](300) NULL,
	[drop_location] [varchar](300) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[created_by] [varchar](400) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](400) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](400) NULL,
	[deleted_at] [datetime] NULL,
	[Request_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[request_place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_request_rating]    Script Date: 15-10-2020 11:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_request_rating](
	[rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[driver_id] [bigint] NULL,
	[rating_by] [varchar](20) NULL,
	[comments] [varchar](500) NULL,
	[request_id] [bigint] NULL,
	[user_rating] [float] NULL,
	[driver_rating] [float] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_roles]    Script Date: 15-10-2020 11:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_roles](
	[Roleid] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NULL,
	[Display_Name] [nvarchar](30) NULL,
	[Description] [nvarchar](200) NULL,
	[ALL_Rights] [int] NULL,
	[Locked] [int] NULL,
	[Created_By] [nvarchar](100) NULL,
	[Created_At] [datetime] NULL,
	[Updated_At] [datetime] NULL,
	[IsActive] [int] NULL,
	[updated_by] [varchar](150) NULL,
	[Deleted_at] [datetime] NULL,
	[deleted_by] [varchar](150) NULL,
	[isDelete] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_servicelocation]    Script Date: 15-10-2020 11:47:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_servicelocation](
	[servicelocid] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[countryid] [bigint] NULL,
	[currencyid] [bigint] NULL,
	[timezoneid] [bigint] NULL,
	[isActive] [int] NULL,
	[isDeleted] [int] NULL,
	[Created_by] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [nvarchar](100) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [nvarchar](100) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[servicelocid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_setprice_zonetype]    Script Date: 15-10-2020 11:47:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_setprice_zonetype](
	[setpriceid] [bigint] IDENTITY(1,1) NOT NULL,
	[zonetypeid] [bigint] NULL,
	[Baseprice] [decimal](8, 2) NULL,
	[pricepertime] [decimal](8, 2) NULL,
	[basedistance] [bigint] NOT NULL,
	[priceperdistance] [decimal](8, 2) NULL,
	[freewaitingtime] [bigint] NOT NULL,
	[waitingcharges] [decimal](8, 2) NULL,
	[cancellationfee] [decimal](8, 2) NULL,
	[dropfee] [decimal](8, 2) NULL,
	[admincommtype] [nvarchar](100) NULL,
	[admincommission] [decimal](8, 2) NULL,
	[Driversavingper] [decimal](8, 2) NULL,
	[customseldrifee] [decimal](8, 2) NULL,
	[RideType] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](200) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](200) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[setpriceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_settings]    Script Date: 15-10-2020 11:47:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_settings](
	[settings_id] [int] IDENTITY(1,1) NOT NULL,
	[settings_name] [varchar](300) NOT NULL,
	[isActive] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[settings_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_SOS]    Script Date: 15-10-2020 11:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_SOS](
	[SOSid] [bigint] IDENTITY(1,1) NOT NULL,
	[SOSName] [nvarchar](100) NOT NULL,
	[contact_number] [nvarchar](20) NOT NULL,
	[isActive] [int] NULL,
	[isDeleted] [int] NULL,
	[Created_by] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [nvarchar](100) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [nvarchar](100) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SOSid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_surgeprice]    Script Date: 15-10-2020 11:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_surgeprice](
	[surgeprice_id] [bigint] IDENTITY(1,1) NOT NULL,
	[zone_id] [bigint] NULL,
	[surgeprice_type] [varchar](200) NULL,
	[start_time] [varchar](10) NULL,
	[end_time] [varchar](10) NULL,
	[peak_type] [varchar](100) NULL,
	[surgeprice_value] [float] NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](300) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[surgeprice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_timezone]    Script Date: 15-10-2020 11:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_timezone](
	[timezoneid] [bigint] IDENTITY(1,1) NOT NULL,
	[countryid] [bigint] NULL,
	[zonedescription] [nvarchar](200) NULL,
	[IsActive] [int] NULL,
	[isDelete] [int] NULL,
	[created_By] [nvarchar](200) NULL,
	[Created_at] [datetime] NULL,
	[updated_by] [nvarchar](200) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [nvarchar](200) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[timezoneid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_trip_settings]    Script Date: 15-10-2020 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_trip_settings](
	[trip_settings_id] [int] IDENTITY(1,1) NOT NULL,
	[trip_settings_question] [varchar](300) NOT NULL,
	[trip_settings_answer] [varchar](500) NULL,
	[isActive] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[trip_settings_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_types]    Script Date: 15-10-2020 11:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_types](
	[typeid] [bigint] IDENTITY(1,1) NOT NULL,
	[typename] [nvarchar](100) NOT NULL,
	[imagename] [nvarchar](150) NOT NULL,
	[isActive] [int] NULL,
	[isDeleted] [int] NULL,
	[Created_by] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [nvarchar](100) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [nvarchar](100) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_uploadfiledetails]    Script Date: 15-10-2020 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_uploadfiledetails](
	[fileid] [bigint] IDENTITY(1,1) NOT NULL,
	[filename] [varchar](300) NOT NULL,
	[mimetype] [varchar](100) NOT NULL,
	[size] [bigint] NULL,
	[extention] [varchar](200) NOT NULL,
	[Created_By] [nvarchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_By] [nvarchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_By] [nvarchar](200) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[fileid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_user]    Script Date: 15-10-2020 11:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_user](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](250) NULL,
	[lastname] [varchar](191) NULL,
	[email] [varchar](191) NULL,
	[phone_number] [varchar](191) NULL,
	[password] [varchar](191) NULL,
	[gender] [varchar](10) NULL,
	[address] [nvarchar](500) NULL,
	[city] [varchar](150) NULL,
	[state] [varchar](150) NULL,
	[countryid] [bigint] NULL,
	[timezoneid] [bigint] NULL,
	[currencyid] [bigint] NULL,
	[profile_pic] [varchar](191) NULL,
	[token] [nvarchar](500) NULL,
	[token_expiry] [datetime] NULL,
	[device_token] [varchar](191) NULL,
	[login_by] [varchar](191) NULL,
	[login_method] [varchar](191) NULL,
	[is_ios_production] [int] NULL,
	[social_unique_id] [varchar](191) NULL,
	[if_dispatch] [int] NULL,
	[corporate_admin_id] [int] NULL,
	[if_corporate_user] [int] NULL,
	[corporate_admin_reference] [int] NULL,
	[otp_verification_code] [varchar](191) NULL,
	[otp_verification_validation_time] [datetime] NULL,
	[cancellation_continuous_skip] [int] NULL,
	[cancellation_continuous_skip_notified] [int] NULL,
	[continuous_cancellation_block] [int] NULL,
	[IsActive] [bit] NULL,
	[isDelete] [int] NULL,
	[created_By] [nvarchar](200) NULL,
	[Created_at] [datetime] NULL,
	[updated_by] [nvarchar](200) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [nvarchar](200) NULL,
	[deleted_at] [datetime] NULL,
	[Rating] [float] NULL,
	[NoofRating] [bigint] NULL,
	[Avg_Rating] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_User_cancellation]    Script Date: 15-10-2020 11:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_User_cancellation](
	[User_CancelId] [bigint] IDENTITY(1,1) NOT NULL,
	[zonetypeid] [bigint] NULL,
	[paymentstatus] [varchar](50) NULL,
	[arrivalstatus] [varchar](100) NULL,
	[Cancellation_Reason_English] [nvarchar](400) NULL,
	[Cancellation_Reason_Arabic] [nvarchar](400) NULL,
	[Cancellation_Reason_Spanish] [nvarchar](400) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [varchar](200) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_CancelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_User_Complaint]    Script Date: 15-10-2020 11:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_User_Complaint](
	[User_ComplaintID] [bigint] IDENTITY(1,1) NOT NULL,
	[zoneid] [bigint] NULL,
	[UserComplaint_type] [nvarchar](100) NULL,
	[UserComplaint_title] [nvarchar](400) NULL,
	[isActive] [bit] NULL,
	[isDelete] [bit] NULL,
	[Created_by] [varchar](200) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [varchar](200) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [varchar](200) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_wallet_settings]    Script Date: 15-10-2020 11:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_wallet_settings](
	[trip_wallet_id] [int] IDENTITY(1,1) NOT NULL,
	[trip_wallet_question] [varchar](300) NOT NULL,
	[trip_wallet_answer] [varchar](500) NULL,
	[isActive] [bit] NULL,
	[created_by] [varchar](300) NULL,
	[created_at] [datetime] NULL,
	[updated_by] [varchar](300) NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[trip_wallet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_zone]    Script Date: 15-10-2020 11:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_zone](
	[zoneid] [bigint] IDENTITY(1,1) NOT NULL,
	[zonename] [nvarchar](200) NOT NULL,
	[servicelocid] [bigint] NULL,
	[unit] [varchar](50) NULL,
	[isActive] [int] NULL,
	[isDeleted] [int] NULL,
	[Created_by] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [nvarchar](100) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [nvarchar](100) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[zoneid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tab_zonepolygon]    Script Date: 15-10-2020 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_zonepolygon](
	[zonepolygonid] [bigint] IDENTITY(1,1) NOT NULL,
	[zoneid] [bigint] NULL,
	[latitudes] [decimal](8, 6) NULL,
	[longitudes] [decimal](9, 6) NULL,
	[isActive] [int] NULL,
	[isDeleted] [int] NULL,
	[Created_by] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Updated_by] [nvarchar](100) NULL,
	[Updated_at] [datetime] NULL,
	[Deleted_by] [nvarchar](100) NULL,
	[Deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[zonepolygonid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tab_zonetype_relationship]    Script Date: 15-10-2020 11:47:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tab_zonetype_relationship](
	[zonetypeid] [bigint] IDENTITY(1,1) NOT NULL,
	[zoneid] [bigint] NULL,
	[typeid] [bigint] NULL,
	[paymentmode] [varchar](200) NOT NULL,
	[showbill] [bit] NULL,
	[isDefault] [int] NULL,
	[created_by] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[isActive] [int] NULL,
	[isDelete] [int] NULL,
	[updated_by] [varchar](100) NULL,
	[updated_at] [datetime] NULL,
	[deleted_by] [varchar](100) NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[zonetypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_errorlog]    Script Date: 15-10-2020 11:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_errorlog](
	[int] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[created_at] [datetime] NULL,
	[created_by] [nvarchar](100) NULL,
	[FunctionName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [dashboard]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [dashboard_dash]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_admin]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_admin_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_admin_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_admin_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_role]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_role_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_role_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [admin_manage_role_privilege]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_manage_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_manage_user_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_manage_user_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_manage_user_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_manage_user_wallet]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_blocked_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [user_blocked_user_approve]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver_upload]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver_edit_reward]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_manage_driver_approve]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_wallet_payment]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_wallet_payment_wallet]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_wallet_payment_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_account_payment]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_account_payment_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_account_payment_transfer]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_earning_payment]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_earning_payment_earning]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_earning_payment_savings]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_earning_payment_cancel]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_fine]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_fine_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_fine_pay]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_fine_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_fine_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_bonus]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_bonus_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_blocked]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [driver_blocked_approve]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone_map]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_manage_zone_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_operation]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_operation_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_operation_map]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_operation_zone_settings]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_operation_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [zone_operation_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_manage_type]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_manage_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_manage_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_manage_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_manage_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_pricing]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_pricing_set]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_pricing_surge]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_pricing_default]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [vehicle_pricing_undefault]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_currency_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_currency_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_currency_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_currency_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_currency_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_manage]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_manage_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_manage_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_drivers]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_driver_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_driver_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_transaction]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_transaction_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [company_transaction_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [request_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [request_manage]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [request_manage_view]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [request_schedule]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [request_schedule_view]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [request_schedule_cancel]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [transaction_details_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [transaction_trans_details]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_notification_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_notifi_push]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_sms_option]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_sms_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_sms_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_sms_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_sms]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_email]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_email_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_email_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_email_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [referral_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [referral_manage_option]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [referral_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [referral_driver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_code_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_option]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_manage_dash]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [promo_transaction]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user_compensate]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_user_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver_compensate]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [cancel_manage_driver_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [review_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [review_usertodriver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [review_usertodriver_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [review_usertodriver_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [review_drivertouser]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_manage_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_user_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_user_taken]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_user_solved]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_manage_driver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_driver_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_driver_taken]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [complaint_driver_solved]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_blocked_user]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_driver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_blocked_driver]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_finance]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_business]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_travel]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_rating]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [reports_ledger]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_settings_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_settings]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_settings_trip]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_settings_wallet]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_settings_installation]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_settings_general]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ_add]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ_edit]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ_delete]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ_active]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_FAQ_inactive]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_map_mgnt]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_map]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_map_view]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT ((0)) FOR [manage_heat_map]
GO
ALTER TABLE [dbo].[set_privilege] ADD  DEFAULT (getdate()) FOR [createdat]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_admin] ADD  CONSTRAINT [DF_tab_admin_Inserted]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_admin] ADD  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[tab_admin] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tab_admin_details] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_admin_details] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_admin_details] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tab_Admin_Document] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Admin_Document] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_Admin_Document] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_cancellation_fee_for_driver] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[tab_cancellation_fee_for_driver] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_common_currency] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_common_currency] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_common_currency] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_Common_Languages] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [full_name]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [capital]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [citizenship]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [currency_code]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [currency_sub_unit]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [currency_symbol]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('') FOR [country_code]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('') FOR [region_code]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('') FOR [sub_region_code]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [calling_code]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('') FOR [iso_3166_2]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('') FOR [iso_3166_3]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('0') FOR [currency_decimals]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (NULL) FOR [flag]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT ('1') FOR [active]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_countries] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tab_Country] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[tab_Country] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Country] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_currencies] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tab_currencies] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_currencies] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_Document_ApporvalStatus] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_driver_bonus] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_driver_bonus] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_driver_bonus] ADD  DEFAULT (getdate()) FOR [createdat]
GO
ALTER TABLE [dbo].[tab_driver_cancellation] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_driver_cancellation] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_driver_cancellation] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_Driver_Complaint] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Driver_Complaint] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_Driver_Complaint] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_Driver_Documents] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Driver_Documents] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_Driver_Documents] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_driver_fine] ADD  DEFAULT ((0)) FOR [finepaid_status]
GO
ALTER TABLE [dbo].[tab_driver_fine] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_driver_fine] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_driver_fine] ADD  DEFAULT (getdate()) FOR [createdat]
GO
ALTER TABLE [dbo].[tab_driver_wallet] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_driver_wallet] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_driver_wallet] ADD  DEFAULT (getdate()) FOR [createdat]
GO
ALTER TABLE [dbo].[tab_Drivers] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Drivers] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_Drivers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_Drivers] ADD  DEFAULT ((0)) FOR [isApproved]
GO
ALTER TABLE [dbo].[tab_Drivers] ADD  DEFAULT ((0)) FOR [isAvailable]
GO
ALTER TABLE [dbo].[tab_Drivers] ADD  DEFAULT ((0)) FOR [Online_Status]
GO
ALTER TABLE [dbo].[tab_employee_details] ADD  DEFAULT ((1)) FOR [emp_isactive]
GO
ALTER TABLE [dbo].[tab_employee_details] ADD  DEFAULT (getdate()) FOR [emp_createddate]
GO
ALTER TABLE [dbo].[tab_FAQ] ADD  CONSTRAINT [tab_FAQ_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_FAQ] ADD  CONSTRAINT [tab_FAQ_isDelete]  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_FAQ] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_General_settings] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_General_settings] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_installation_settings] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_installation_settings] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_Manage_Email] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Manage_Email] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_Manage_Referral] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_Manage_Referral] ADD  CONSTRAINT [tab_Manage_Ref_Isactive]  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Manage_SMS] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_Manage_SMS] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_ManageDocument] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_ManageDocument] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_ManageDocument] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_MenuAccess] ADD  DEFAULT ((0)) FOR [viewstatus]
GO
ALTER TABLE [dbo].[tab_MenuAccess] ADD  DEFAULT (getdate()) FOR [createdby]
GO
ALTER TABLE [dbo].[tab_OTP_users] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_OTP_users] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_promo] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_promo] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_promo] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_push_notification] ADD  DEFAULT ((0)) FOR [HasRedirectURL]
GO
ALTER TABLE [dbo].[tab_push_notification] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_push_notification] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT (NULL) FOR [request_otp]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [later]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [is_share]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [no_of_seats]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0.00)) FOR [distance]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0.00)) FOR [waiting_time]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0.00)) FOR [time]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [total]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ('CASH') FOR [payment_opt]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ('UNPAID') FOR [is_paid]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [user_rated]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [driver_rated]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [promo_id]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [if_dispatch]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ((0)) FOR [ride_later_custom_driver]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ('Normal Trip') FOR [instant_trip]
GO
ALTER TABLE [dbo].[tab_request] ADD  DEFAULT ('No') FOR [Isreschedule]
GO
ALTER TABLE [dbo].[tab_request_meta] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT (NULL) FOR [drop_latitude]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT (NULL) FOR [drop_longitude]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT (NULL) FOR [pick_location]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT (NULL) FOR [drop_location]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_request_place] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_request_rating] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_roles] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[tab_roles] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tab_roles] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_servicelocation] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_servicelocation] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_servicelocation] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_servicelocation] ADD  DEFAULT (getdate()) FOR [Updated_at]
GO
ALTER TABLE [dbo].[tab_servicelocation] ADD  DEFAULT (getdate()) FOR [Deleted_at]
GO
ALTER TABLE [dbo].[tab_setprice_zonetype] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_setprice_zonetype] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_setprice_zonetype] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_settings] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_settings] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_SOS] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_SOS] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_SOS] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_surgeprice] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_surgeprice] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_surgeprice] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_timezone] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tab_timezone] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_timezone] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_trip_settings] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_trip_settings] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_types] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_types] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_types] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_uploadfiledetails] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_user] ADD  CONSTRAINT [tab_user_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tab_user] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_user] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_User_cancellation] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_User_cancellation] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_User_cancellation] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_User_Complaint] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_User_Complaint] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tab_User_Complaint] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_wallet_settings] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_wallet_settings] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_zone] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_zone] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_zone] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_zonepolygon] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_zonepolygon] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tab_zonepolygon] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[tab_zonetype_relationship] ADD  DEFAULT ((0)) FOR [showbill]
GO
ALTER TABLE [dbo].[tab_zonetype_relationship] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tab_zonetype_relationship] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[tab_zonetype_relationship] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[tbl_errorlog] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[set_privilege]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[tab_roles] ([Roleid])
GO
ALTER TABLE [dbo].[tab_admin]  WITH CHECK ADD FOREIGN KEY([area_name])
REFERENCES [dbo].[tab_servicelocation] ([servicelocid])
GO
ALTER TABLE [dbo].[tab_admin]  WITH CHECK ADD  CONSTRAINT [fk_tab_Country_id] FOREIGN KEY([zone_access])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_admin] CHECK CONSTRAINT [fk_tab_Country_id]
GO
ALTER TABLE [dbo].[tab_admin]  WITH CHECK ADD  CONSTRAINT [fk_tab_language_id] FOREIGN KEY([language])
REFERENCES [dbo].[tab_Common_Languages] ([Languageid])
GO
ALTER TABLE [dbo].[tab_admin] CHECK CONSTRAINT [fk_tab_language_id]
GO
ALTER TABLE [dbo].[tab_admin]  WITH CHECK ADD  CONSTRAINT [fk_tab_role_id] FOREIGN KEY([role])
REFERENCES [dbo].[tab_roles] ([Roleid])
GO
ALTER TABLE [dbo].[tab_admin] CHECK CONSTRAINT [fk_tab_role_id]
GO
ALTER TABLE [dbo].[tab_admin]  WITH CHECK ADD  CONSTRAINT [fk_tab_timezone_id] FOREIGN KEY([zone_access])
REFERENCES [dbo].[tab_timezone] ([timezoneid])
GO
ALTER TABLE [dbo].[tab_admin] CHECK CONSTRAINT [fk_tab_timezone_id]
GO
ALTER TABLE [dbo].[tab_admin_details]  WITH CHECK ADD FOREIGN KEY([admin_id])
REFERENCES [dbo].[tab_admin] ([id])
GO
ALTER TABLE [dbo].[tab_admin_details]  WITH CHECK ADD FOREIGN KEY([Country_id])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_Admin_Document]  WITH CHECK ADD FOREIGN KEY([adminid])
REFERENCES [dbo].[tab_admin] ([id])
GO
ALTER TABLE [dbo].[tab_cancellation_fee_for_driver]  WITH CHECK ADD FOREIGN KEY([Driverid])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_cancellation_fee_for_driver]  WITH CHECK ADD FOREIGN KEY([request_id])
REFERENCES [dbo].[tab_request] ([id])
GO
ALTER TABLE [dbo].[tab_common_currency]  WITH CHECK ADD FOREIGN KEY([currenciesid])
REFERENCES [dbo].[tab_currencies] ([currenciesid])
GO
ALTER TABLE [dbo].[tab_currencies]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_driver_bonus]  WITH CHECK ADD FOREIGN KEY([Driverid])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_driver_cancellation]  WITH CHECK ADD FOREIGN KEY([zonetypeid])
REFERENCES [dbo].[tab_zonetype_relationship] ([zonetypeid])
GO
ALTER TABLE [dbo].[tab_Driver_Complaint]  WITH CHECK ADD FOREIGN KEY([zoneid])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
ALTER TABLE [dbo].[tab_Driver_Documents]  WITH CHECK ADD FOREIGN KEY([Doc_ApprovalID])
REFERENCES [dbo].[tab_Document_ApporvalStatus] ([Doc_ApprovalID])
GO
ALTER TABLE [dbo].[tab_Driver_Documents]  WITH CHECK ADD FOREIGN KEY([Documentid])
REFERENCES [dbo].[tab_ManageDocument] ([DocumentID])
GO
ALTER TABLE [dbo].[tab_Driver_Documents]  WITH CHECK ADD FOREIGN KEY([Driverid])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_driver_fine]  WITH CHECK ADD FOREIGN KEY([Driverid])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_driver_wallet]  WITH CHECK ADD FOREIGN KEY([currencyid])
REFERENCES [dbo].[tab_common_currency] ([currencyid])
GO
ALTER TABLE [dbo].[tab_driver_wallet]  WITH CHECK ADD FOREIGN KEY([Driverid])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_Drivers]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_Drivers]  WITH CHECK ADD FOREIGN KEY([servicelocid])
REFERENCES [dbo].[tab_servicelocation] ([servicelocid])
GO
ALTER TABLE [dbo].[tab_Drivers]  WITH CHECK ADD FOREIGN KEY([typeid])
REFERENCES [dbo].[tab_types] ([typeid])
GO
ALTER TABLE [dbo].[tab_Drivers]  WITH CHECK ADD FOREIGN KEY([zoneid])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
ALTER TABLE [dbo].[tab_FAQ]  WITH CHECK ADD FOREIGN KEY([servicelocid])
REFERENCES [dbo].[tab_servicelocation] ([servicelocid])
GO
ALTER TABLE [dbo].[tab_manage_Email_Hints]  WITH CHECK ADD FOREIGN KEY([ManageEmailid])
REFERENCES [dbo].[tab_Manage_Email] ([ManageEmailid])
GO
ALTER TABLE [dbo].[tab_manage_SMS_Hints]  WITH CHECK ADD FOREIGN KEY([ManageSMSid])
REFERENCES [dbo].[tab_Manage_SMS] ([ManageSMSid])
GO
ALTER TABLE [dbo].[tab_MenuAccess]  WITH CHECK ADD FOREIGN KEY([Menuid])
REFERENCES [dbo].[tab_menu] ([Menuid])
GO
ALTER TABLE [dbo].[tab_MenuAccess]  WITH CHECK ADD FOREIGN KEY([Roleid])
REFERENCES [dbo].[tab_roles] ([Roleid])
GO
ALTER TABLE [dbo].[tab_promo]  WITH CHECK ADD FOREIGN KEY([zoneid])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
ALTER TABLE [dbo].[tab_refreshtoken]  WITH CHECK ADD  CONSTRAINT [fk_userrefreshtoken] FOREIGN KEY([userid])
REFERENCES [dbo].[tab_admin] ([id])
GO
ALTER TABLE [dbo].[tab_refreshtoken] CHECK CONSTRAINT [fk_userrefreshtoken]
GO
ALTER TABLE [dbo].[tab_request]  WITH CHECK ADD FOREIGN KEY([driver_id])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_request]  WITH CHECK ADD FOREIGN KEY([typeid])
REFERENCES [dbo].[tab_types] ([typeid])
GO
ALTER TABLE [dbo].[tab_request]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tab_user] ([id])
GO
ALTER TABLE [dbo].[tab_request_meta]  WITH CHECK ADD FOREIGN KEY([driver_id])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_request_meta]  WITH CHECK ADD FOREIGN KEY([Request_id])
REFERENCES [dbo].[tab_request] ([id])
GO
ALTER TABLE [dbo].[tab_request_meta]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tab_user] ([id])
GO
ALTER TABLE [dbo].[tab_request_place]  WITH CHECK ADD FOREIGN KEY([Request_id])
REFERENCES [dbo].[tab_request] ([id])
GO
ALTER TABLE [dbo].[tab_request_rating]  WITH CHECK ADD FOREIGN KEY([driver_id])
REFERENCES [dbo].[tab_Drivers] ([Driverid])
GO
ALTER TABLE [dbo].[tab_request_rating]  WITH CHECK ADD FOREIGN KEY([request_id])
REFERENCES [dbo].[tab_request] ([id])
GO
ALTER TABLE [dbo].[tab_request_rating]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tab_user] ([id])
GO
ALTER TABLE [dbo].[tab_servicelocation]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_servicelocation]  WITH CHECK ADD FOREIGN KEY([currencyid])
REFERENCES [dbo].[tab_common_currency] ([currencyid])
GO
ALTER TABLE [dbo].[tab_servicelocation]  WITH CHECK ADD FOREIGN KEY([timezoneid])
REFERENCES [dbo].[tab_timezone] ([timezoneid])
GO
ALTER TABLE [dbo].[tab_setprice_zonetype]  WITH CHECK ADD FOREIGN KEY([zonetypeid])
REFERENCES [dbo].[tab_zonetype_relationship] ([zonetypeid])
GO
ALTER TABLE [dbo].[tab_surgeprice]  WITH CHECK ADD FOREIGN KEY([zone_id])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
ALTER TABLE [dbo].[tab_timezone]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_user]  WITH CHECK ADD FOREIGN KEY([countryid])
REFERENCES [dbo].[tab_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tab_user]  WITH CHECK ADD FOREIGN KEY([timezoneid])
REFERENCES [dbo].[tab_timezone] ([timezoneid])
GO
ALTER TABLE [dbo].[tab_user]  WITH CHECK ADD  CONSTRAINT [TAB_USERS_COMM_CURRENCY_ID] FOREIGN KEY([currencyid])
REFERENCES [dbo].[tab_common_currency] ([currencyid])
GO
ALTER TABLE [dbo].[tab_user] CHECK CONSTRAINT [TAB_USERS_COMM_CURRENCY_ID]
GO
ALTER TABLE [dbo].[tab_User_cancellation]  WITH CHECK ADD FOREIGN KEY([zonetypeid])
REFERENCES [dbo].[tab_zonetype_relationship] ([zonetypeid])
GO
ALTER TABLE [dbo].[tab_User_Complaint]  WITH CHECK ADD FOREIGN KEY([zoneid])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
ALTER TABLE [dbo].[tab_zone]  WITH CHECK ADD FOREIGN KEY([servicelocid])
REFERENCES [dbo].[tab_servicelocation] ([servicelocid])
GO
ALTER TABLE [dbo].[tab_zonepolygon]  WITH CHECK ADD FOREIGN KEY([zoneid])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
ALTER TABLE [dbo].[tab_zonetype_relationship]  WITH CHECK ADD FOREIGN KEY([typeid])
REFERENCES [dbo].[tab_types] ([typeid])
GO
ALTER TABLE [dbo].[tab_zonetype_relationship]  WITH CHECK ADD FOREIGN KEY([zoneid])
REFERENCES [dbo].[tab_zone] ([zoneid])
GO
USE [master]
GO
ALTER DATABASE [TaxiAppzDB] SET  READ_WRITE 
GO
